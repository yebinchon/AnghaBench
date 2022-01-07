
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ndbs; TYPE_1__* dbs; } ;
struct TYPE_4__ {int rel_arr; int db_name; } ;
typedef TYPE_2__ DbInfoArr ;


 int PG_VERBOSE ;
 int pg_log (int ,char*,...) ;
 int print_rel_infos (int *) ;

__attribute__((used)) static void
print_db_infos(DbInfoArr *db_arr)
{
 int dbnum;

 for (dbnum = 0; dbnum < db_arr->ndbs; dbnum++)
 {
  pg_log(PG_VERBOSE, "Database: %s\n", db_arr->dbs[dbnum].db_name);
  print_rel_infos(&db_arr->dbs[dbnum].rel_arr);
  pg_log(PG_VERBOSE, "\n\n");
 }
}
