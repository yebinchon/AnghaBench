
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_11__ {TYPE_1__ dbarr; int major_version; } ;
struct TYPE_10__ {int num_libraries; TYPE_2__* libraries; } ;
struct TYPE_9__ {int db_name; } ;
struct TYPE_8__ {int dbnum; int name; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef TYPE_2__ LibraryInfo ;
typedef TYPE_3__ DbInfo ;


 int ClanguageId ;
 int FirstNormalObjectId ;
 int GET_MAJOR_VERSION (int ) ;
 int PG_WARNING ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 char* PQgetvalue (int *,int,int ) ;
 scalar_t__ PQntuples (int *) ;
 int * connectToServer (TYPE_5__*,int ) ;
 int * executeQueryOrDie (int *,char*,int ,int ) ;
 TYPE_5__ old_cluster ;
 TYPE_4__ os_info ;
 int pg_fatal (char*) ;
 int pg_free (int **) ;
 int pg_log (int ,char*,...) ;
 scalar_t__ pg_malloc (int) ;
 int pg_strdup (char*) ;

void
get_loadable_libraries(void)
{
 PGresult **ress;
 int totaltups;
 int dbnum;
 bool found_public_plpython_handler = 0;

 ress = (PGresult **) pg_malloc(old_cluster.dbarr.ndbs * sizeof(PGresult *));
 totaltups = 0;


 for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
 {
  DbInfo *active_db = &old_cluster.dbarr.dbs[dbnum];
  PGconn *conn = connectToServer(&old_cluster, active_db->db_name);




  ress[dbnum] = executeQueryOrDie(conn,
          "SELECT DISTINCT probin "
          "FROM pg_catalog.pg_proc "
          "WHERE prolang = %u AND "
          "probin IS NOT NULL AND "
          "oid >= %u;",
          ClanguageId,
          FirstNormalObjectId);
  totaltups += PQntuples(ress[dbnum]);
  if (GET_MAJOR_VERSION(old_cluster.major_version) < 901)
  {
   PGresult *res;

   res = executeQueryOrDie(conn,
         "SELECT 1 "
         "FROM pg_catalog.pg_proc p "
         "    JOIN pg_catalog.pg_namespace n "
         "    ON pronamespace = n.oid "
         "WHERE proname = 'plpython_call_handler' AND "
         "nspname = 'public' AND "
         "prolang = %u AND "
         "probin = '$libdir/plpython' AND "
         "p.oid >= %u;",
         ClanguageId,
         FirstNormalObjectId);
   if (PQntuples(res) > 0)
   {
    if (!found_public_plpython_handler)
    {
     pg_log(PG_WARNING,
         "\nThe old cluster has a \"plpython_call_handler\" function defined\n"
         "in the \"public\" schema which is a duplicate of the one defined\n"
         "in the \"pg_catalog\" schema.  You can confirm this by executing\n"
         "in psql:\n"
         "\n"
         "    \\df *.plpython_call_handler\n"
         "\n"
         "The \"public\" schema version of this function was created by a\n"
         "pre-8.1 install of plpython, and must be removed for pg_upgrade\n"
         "to complete because it references a now-obsolete \"plpython\"\n"
         "shared object file.  You can remove the \"public\" schema version\n"
         "of this function by running the following command:\n"
         "\n"
         "    DROP FUNCTION public.plpython_call_handler()\n"
         "\n"
         "in each affected database:\n"
         "\n");
    }
    pg_log(PG_WARNING, "    %s\n", active_db->db_name);
    found_public_plpython_handler = 1;
   }
   PQclear(res);
  }

  PQfinish(conn);
 }

 if (found_public_plpython_handler)
  pg_fatal("Remove the problem functions from the old cluster to continue.\n");

 os_info.libraries = (LibraryInfo *) pg_malloc(totaltups * sizeof(LibraryInfo));
 totaltups = 0;

 for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
 {
  PGresult *res = ress[dbnum];
  int ntups;
  int rowno;

  ntups = PQntuples(res);
  for (rowno = 0; rowno < ntups; rowno++)
  {
   char *lib = PQgetvalue(res, rowno, 0);

   os_info.libraries[totaltups].name = pg_strdup(lib);
   os_info.libraries[totaltups].dbnum = dbnum;

   totaltups++;
  }
  PQclear(res);
 }

 pg_free(ress);

 os_info.num_libraries = totaltups;
}
