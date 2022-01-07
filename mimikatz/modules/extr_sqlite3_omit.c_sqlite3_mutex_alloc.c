
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_mutex ;
struct TYPE_3__ {int * (* xMutexAlloc ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ mutex; } ;


 int SQLITE_MUTEX_RECURSIVE ;
 int assert (int * (*) (int)) ;
 TYPE_2__ sqlite3GlobalConfig ;
 scalar_t__ sqlite3MutexInit () ;
 scalar_t__ sqlite3_initialize () ;
 int * stub1 (int) ;

sqlite3_mutex *sqlite3_mutex_alloc(int id){

  if( id<=SQLITE_MUTEX_RECURSIVE && sqlite3_initialize() ) return 0;
  if( id>SQLITE_MUTEX_RECURSIVE && sqlite3MutexInit() ) return 0;

  assert( sqlite3GlobalConfig.mutex.xMutexAlloc );
  return sqlite3GlobalConfig.mutex.xMutexAlloc(id);
}
