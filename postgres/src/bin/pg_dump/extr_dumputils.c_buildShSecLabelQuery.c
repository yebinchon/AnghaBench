
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;
typedef int PGconn ;
typedef int Oid ;


 int appendPQExpBuffer (int ,char*,char const*,int ) ;

void
buildShSecLabelQuery(PGconn *conn, const char *catalog_name, Oid objectId,
      PQExpBuffer sql)
{
 appendPQExpBuffer(sql,
       "SELECT provider, label FROM pg_catalog.pg_shseclabel "
       "WHERE classoid = 'pg_catalog.%s'::pg_catalog.regclass "
       "AND objoid = '%u'", catalog_name, objectId);
}
