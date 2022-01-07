
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int query ;
struct TYPE_6__ {int ndbs; TYPE_2__* dbs; } ;
struct TYPE_8__ {TYPE_1__ dbarr; int major_version; } ;
struct TYPE_7__ {char* db_tablespace; void* db_ctype; void* db_collate; int db_encoding; void* db_name; int db_oid; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef TYPE_2__ DbInfo ;
typedef TYPE_3__ ClusterInfo ;


 int GET_MAJOR_VERSION (int ) ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQfnumber (int *,char*) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int QUERY_ALLOC ;
 int atoi (char*) ;
 int atooid (char*) ;
 int * connectToServer (TYPE_3__*,char*) ;
 int * executeQueryOrDie (int *,char*,char*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
get_db_infos(ClusterInfo *cluster)
{
 PGconn *conn = connectToServer(cluster, "template1");
 PGresult *res;
 int ntups;
 int tupnum;
 DbInfo *dbinfos;
 int i_datname,
    i_oid,
    i_encoding,
    i_datcollate,
    i_datctype,
    i_spclocation;
 char query[QUERY_ALLOC];

 snprintf(query, sizeof(query),
    "SELECT d.oid, d.datname, d.encoding, d.datcollate, d.datctype, "
    "%s AS spclocation "
    "FROM pg_catalog.pg_database d "
    " LEFT OUTER JOIN pg_catalog.pg_tablespace t "
    " ON d.dattablespace = t.oid "
    "WHERE d.datallowconn = true "

    "ORDER BY 2",

    (GET_MAJOR_VERSION(cluster->major_version) <= 901) ?
    "t.spclocation" : "pg_catalog.pg_tablespace_location(t.oid)");

 res = executeQueryOrDie(conn, "%s", query);

 i_oid = PQfnumber(res, "oid");
 i_datname = PQfnumber(res, "datname");
 i_encoding = PQfnumber(res, "encoding");
 i_datcollate = PQfnumber(res, "datcollate");
 i_datctype = PQfnumber(res, "datctype");
 i_spclocation = PQfnumber(res, "spclocation");

 ntups = PQntuples(res);
 dbinfos = (DbInfo *) pg_malloc(sizeof(DbInfo) * ntups);

 for (tupnum = 0; tupnum < ntups; tupnum++)
 {
  dbinfos[tupnum].db_oid = atooid(PQgetvalue(res, tupnum, i_oid));
  dbinfos[tupnum].db_name = pg_strdup(PQgetvalue(res, tupnum, i_datname));
  dbinfos[tupnum].db_encoding = atoi(PQgetvalue(res, tupnum, i_encoding));
  dbinfos[tupnum].db_collate = pg_strdup(PQgetvalue(res, tupnum, i_datcollate));
  dbinfos[tupnum].db_ctype = pg_strdup(PQgetvalue(res, tupnum, i_datctype));
  snprintf(dbinfos[tupnum].db_tablespace, sizeof(dbinfos[tupnum].db_tablespace), "%s",
     PQgetvalue(res, tupnum, i_spclocation));
 }
 PQclear(res);

 PQfinish(conn);

 cluster->dbarr.dbs = dbinfos;
 cluster->dbarr.ndbs = ntups;
}
