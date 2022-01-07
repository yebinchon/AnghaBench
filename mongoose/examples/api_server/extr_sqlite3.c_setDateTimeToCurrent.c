
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_5__ {int pVfs; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {int validJD; int iJD; } ;
typedef TYPE_2__ DateTime ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ sqlite3OsCurrentTimeInt64 (int ,int *) ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;

__attribute__((used)) static int setDateTimeToCurrent(sqlite3_context *context, DateTime *p){
  sqlite3 *db = sqlite3_context_db_handle(context);
  if( sqlite3OsCurrentTimeInt64(db->pVfs, &p->iJD)==SQLITE_OK ){
    p->validJD = 1;
    return 0;
  }else{
    return 1;
  }
}
