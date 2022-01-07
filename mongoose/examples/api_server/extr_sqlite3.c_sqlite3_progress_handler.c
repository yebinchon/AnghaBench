
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xProgress ) (void*) ;int nProgressOps; int mutex; void* pProgressArg; } ;
typedef TYPE_1__ sqlite3 ;


 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

void sqlite3_progress_handler(
  sqlite3 *db,
  int nOps,
  int (*xProgress)(void*),
  void *pArg
){
  sqlite3_mutex_enter(db->mutex);
  if( nOps>0 ){
    db->xProgress = xProgress;
    db->nProgressOps = nOps;
    db->pProgressArg = pArg;
  }else{
    db->xProgress = 0;
    db->nProgressOps = 0;
    db->pProgressArg = 0;
  }
  sqlite3_mutex_leave(db->mutex);
}
