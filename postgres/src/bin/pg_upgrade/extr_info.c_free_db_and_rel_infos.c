
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* db_name; int rel_arr; } ;
struct TYPE_4__ {int ndbs; TYPE_2__* dbs; } ;
typedef TYPE_1__ DbInfoArr ;


 int free_rel_infos (int *) ;
 int pg_free (TYPE_2__*) ;

__attribute__((used)) static void
free_db_and_rel_infos(DbInfoArr *db_arr)
{
 int dbnum;

 for (dbnum = 0; dbnum < db_arr->ndbs; dbnum++)
 {
  free_rel_infos(&db_arr->dbs[dbnum].rel_arr);
  pg_free(db_arr->dbs[dbnum].db_name);
 }
 pg_free(db_arr->dbs);
 db_arr->dbs = ((void*)0);
 db_arr->ndbs = 0;
}
