
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mutex; } ;
struct TYPE_4__ {int (* xFree ) (void*) ;} ;
struct TYPE_5__ {TYPE_1__ m; scalar_t__ bMemstat; } ;


 int MEMTYPE_DB ;
 int MEMTYPE_HEAP ;
 int SQLITE_STATUS_MALLOC_COUNT ;
 int SQLITE_STATUS_MEMORY_USED ;
 int assert (int ) ;
 TYPE_3__ mem0 ;
 TYPE_2__ sqlite3GlobalConfig ;
 int sqlite3MallocSize (void*) ;
 int sqlite3MemdebugHasType (void*,int ) ;
 int sqlite3MemdebugNoType (void*,int ) ;
 int sqlite3StatusAdd (int ,int) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

void sqlite3_free(void *p){
  if( p==0 ) return;
  assert( sqlite3MemdebugNoType(p, MEMTYPE_DB) );
  assert( sqlite3MemdebugHasType(p, MEMTYPE_HEAP) );
  if( sqlite3GlobalConfig.bMemstat ){
    sqlite3_mutex_enter(mem0.mutex);
    sqlite3StatusAdd(SQLITE_STATUS_MEMORY_USED, -sqlite3MallocSize(p));
    sqlite3StatusAdd(SQLITE_STATUS_MALLOC_COUNT, -1);
    sqlite3GlobalConfig.m.xFree(p);
    sqlite3_mutex_leave(mem0.mutex);
  }else{
    sqlite3GlobalConfig.m.xFree(p);
  }
}
