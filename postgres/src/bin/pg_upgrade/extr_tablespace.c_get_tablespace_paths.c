
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int query ;
struct TYPE_5__ {int major_version; } ;
struct TYPE_4__ {int num_old_tablespaces; char** old_tablespaces; } ;
typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ ENOENT ;
 int GET_MAJOR_VERSION (int ) ;
 int PG_FATAL ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int QUERY_ALLOC ;
 int S_ISDIR (int ) ;
 int * connectToServer (TYPE_2__*,char*) ;
 scalar_t__ errno ;
 int * executeQueryOrDie (int *,char*,char*) ;
 TYPE_2__ old_cluster ;
 TYPE_1__ os_info ;
 scalar_t__ pg_malloc (int) ;
 char* pg_strdup (int ) ;
 int report_status (int ,char*,char*,...) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void
get_tablespace_paths(void)
{
 PGconn *conn = connectToServer(&old_cluster, "template1");
 PGresult *res;
 int tblnum;
 int i_spclocation;
 char query[QUERY_ALLOC];

 snprintf(query, sizeof(query),
    "SELECT	%s "
    "FROM	pg_catalog.pg_tablespace "
    "WHERE	spcname != 'pg_default' AND "
    "		spcname != 'pg_global'",

    (GET_MAJOR_VERSION(old_cluster.major_version) <= 901) ?
    "spclocation" : "pg_catalog.pg_tablespace_location(oid) AS spclocation");

 res = executeQueryOrDie(conn, "%s", query);

 if ((os_info.num_old_tablespaces = PQntuples(res)) != 0)
  os_info.old_tablespaces = (char **) pg_malloc(
               os_info.num_old_tablespaces * sizeof(char *));
 else
  os_info.old_tablespaces = ((void*)0);

 i_spclocation = PQfnumber(res, "spclocation");

 for (tblnum = 0; tblnum < os_info.num_old_tablespaces; tblnum++)
 {
  struct stat statBuf;

  os_info.old_tablespaces[tblnum] = pg_strdup(
             PQgetvalue(res, tblnum, i_spclocation));
  if (stat(os_info.old_tablespaces[tblnum], &statBuf) != 0)
  {
   if (errno == ENOENT)
    report_status(PG_FATAL,
         "tablespace directory \"%s\" does not exist\n",
         os_info.old_tablespaces[tblnum]);
   else
    report_status(PG_FATAL,
         "could not stat tablespace directory \"%s\": %s\n",
         os_info.old_tablespaces[tblnum], strerror(errno));
  }
  if (!S_ISDIR(statBuf.st_mode))
   report_status(PG_FATAL,
        "tablespace path \"%s\" is not a directory\n",
        os_info.old_tablespaces[tblnum]);
 }

 PQclear(res);

 PQfinish(conn);

 return;
}
