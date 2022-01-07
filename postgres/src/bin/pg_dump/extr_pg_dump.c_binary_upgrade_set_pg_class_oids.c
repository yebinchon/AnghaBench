
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int Oid ;
typedef int Archive ;


 int * ExecuteSqlQueryForSingleRow (int *,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int ,int ) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int atooid (int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
binary_upgrade_set_pg_class_oids(Archive *fout,
         PQExpBuffer upgrade_buffer, Oid pg_class_oid,
         bool is_index)
{
 PQExpBuffer upgrade_query = createPQExpBuffer();
 PGresult *upgrade_res;
 Oid pg_class_reltoastrelid;
 Oid pg_index_indexrelid;

 appendPQExpBuffer(upgrade_query,
       "SELECT c.reltoastrelid, i.indexrelid "
       "FROM pg_catalog.pg_class c LEFT JOIN "
       "pg_catalog.pg_index i ON (c.reltoastrelid = i.indrelid AND i.indisvalid) "
       "WHERE c.oid = '%u'::pg_catalog.oid;",
       pg_class_oid);

 upgrade_res = ExecuteSqlQueryForSingleRow(fout, upgrade_query->data);

 pg_class_reltoastrelid = atooid(PQgetvalue(upgrade_res, 0, PQfnumber(upgrade_res, "reltoastrelid")));
 pg_index_indexrelid = atooid(PQgetvalue(upgrade_res, 0, PQfnumber(upgrade_res, "indexrelid")));

 appendPQExpBufferStr(upgrade_buffer,
       "\n-- For binary upgrade, must preserve pg_class oids\n");

 if (!is_index)
 {
  appendPQExpBuffer(upgrade_buffer,
        "SELECT pg_catalog.binary_upgrade_set_next_heap_pg_class_oid('%u'::pg_catalog.oid);\n",
        pg_class_oid);

  if (OidIsValid(pg_class_reltoastrelid))
  {
   appendPQExpBuffer(upgrade_buffer,
         "SELECT pg_catalog.binary_upgrade_set_next_toast_pg_class_oid('%u'::pg_catalog.oid);\n",
         pg_class_reltoastrelid);


   appendPQExpBuffer(upgrade_buffer,
         "SELECT pg_catalog.binary_upgrade_set_next_index_pg_class_oid('%u'::pg_catalog.oid);\n",
         pg_index_indexrelid);
  }
 }
 else
  appendPQExpBuffer(upgrade_buffer,
        "SELECT pg_catalog.binary_upgrade_set_next_index_pg_class_oid('%u'::pg_catalog.oid);\n",
        pg_class_oid);

 appendPQExpBufferChar(upgrade_buffer, '\n');

 PQclear(upgrade_res);
 destroyPQExpBuffer(upgrade_query);
}
