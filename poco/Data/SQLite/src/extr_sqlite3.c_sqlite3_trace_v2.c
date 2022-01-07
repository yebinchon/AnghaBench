
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int mTrace; int (* xTrace ) (unsigned int,void*,void*,void*) ;int mutex; void* pTraceArg; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_trace_v2(
  sqlite3 *db,
  unsigned mTrace,
  int(*xTrace)(unsigned,void*,void*,void*),
  void *pArg
){





  sqlite3_mutex_enter(db->mutex);
  if( mTrace==0 ) xTrace = 0;
  if( xTrace==0 ) mTrace = 0;
  db->mTrace = mTrace;
  db->xTrace = xTrace;
  db->pTraceArg = pArg;
  sqlite3_mutex_leave(db->mutex);
  return SQLITE_OK;
}
