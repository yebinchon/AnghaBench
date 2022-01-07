
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* errmsg; } ;
typedef TYPE_1__ pdo_sqlite_error_info ;
struct TYPE_8__ {int * db; TYPE_1__ einfo; } ;
typedef TYPE_2__ pdo_sqlite_db_handle ;
struct TYPE_9__ {int * driver_data; int is_persistent; } ;
typedef TYPE_3__ pdo_dbh_t ;


 int pdo_sqlite_cleanup_callbacks (TYPE_2__*) ;
 int pefree (TYPE_2__*,int ) ;
 int sqlite3_close (int *) ;
 int sqlite3_close_v2 (int *) ;

__attribute__((used)) static int sqlite_handle_closer(pdo_dbh_t *dbh)
{
 pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;

 if (H) {
  pdo_sqlite_error_info *einfo = &H->einfo;

  pdo_sqlite_cleanup_callbacks(H);
  if (H->db) {



   sqlite3_close(H->db);

   H->db = ((void*)0);
  }
  if (einfo->errmsg) {
   pefree(einfo->errmsg, dbh->is_persistent);
   einfo->errmsg = ((void*)0);
  }
  pefree(H, dbh->is_persistent);
  dbh->driver_data = ((void*)0);
 }
 return 0;
}
