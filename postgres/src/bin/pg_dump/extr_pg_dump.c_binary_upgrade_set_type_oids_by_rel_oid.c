
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
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetisnull (int *,int ,int ) ;
 int PQgetvalue (int *,int ,int ) ;
 int RELKIND_PARTITIONED_TABLE ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ,...) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int atooid (int ) ;
 int binary_upgrade_set_type_oids_by_type_oid (int *,TYPE_1__*,int ,int) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static bool
binary_upgrade_set_type_oids_by_rel_oid(Archive *fout,
          PQExpBuffer upgrade_buffer,
          Oid pg_rel_oid)
{
 PQExpBuffer upgrade_query = createPQExpBuffer();
 PGresult *upgrade_res;
 Oid pg_type_oid;
 bool toast_set = 0;
 appendPQExpBuffer(upgrade_query,
       "SELECT c.reltype AS crel, t.reltype AS trel "
       "FROM pg_catalog.pg_class c "
       "LEFT JOIN pg_catalog.pg_class t ON "
       "  (c.reltoastrelid = t.oid AND c.relkind <> '%c') "
       "WHERE c.oid = '%u'::pg_catalog.oid;",
       RELKIND_PARTITIONED_TABLE, pg_rel_oid);

 upgrade_res = ExecuteSqlQueryForSingleRow(fout, upgrade_query->data);

 pg_type_oid = atooid(PQgetvalue(upgrade_res, 0, PQfnumber(upgrade_res, "crel")));

 binary_upgrade_set_type_oids_by_type_oid(fout, upgrade_buffer,
            pg_type_oid, 0);

 if (!PQgetisnull(upgrade_res, 0, PQfnumber(upgrade_res, "trel")))
 {

  Oid pg_type_toast_oid = atooid(PQgetvalue(upgrade_res, 0,
                PQfnumber(upgrade_res, "trel")));

  appendPQExpBufferStr(upgrade_buffer, "\n-- For binary upgrade, must preserve pg_type toast oid\n");
  appendPQExpBuffer(upgrade_buffer,
        "SELECT pg_catalog.binary_upgrade_set_next_toast_pg_type_oid('%u'::pg_catalog.oid);\n\n",
        pg_type_toast_oid);

  toast_set = 1;
 }

 PQclear(upgrade_res);
 destroyPQExpBuffer(upgrade_query);

 return toast_set;
}
