
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_mutex ;
struct TYPE_3__ {int (* xMutexLeave ) (int *) ;} ;
struct TYPE_4__ {TYPE_1__ mutex; } ;


 int assert (int (*) (int *)) ;
 TYPE_2__ sqlite3GlobalConfig ;
 int stub1 (int *) ;

void sqlite3_mutex_leave(sqlite3_mutex *p){
  if( p ){
    assert( sqlite3GlobalConfig.mutex.xMutexLeave );
    sqlite3GlobalConfig.mutex.xMutexLeave(p);
  }
}
