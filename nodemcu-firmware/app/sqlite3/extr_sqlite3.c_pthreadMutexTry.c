
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ id; int nRef; int trace; void* owner; int mutex; } ;
typedef TYPE_1__ sqlite3_mutex ;
typedef void* pthread_t ;


 int SQLITE_BUSY ;
 scalar_t__ SQLITE_MUTEX_RECURSIVE ;
 int SQLITE_OK ;
 int assert (int) ;
 int printf (char*,TYPE_1__*,int,int) ;
 scalar_t__ pthreadMutexNotheld (TYPE_1__*) ;
 scalar_t__ pthread_equal (void*,void*) ;
 scalar_t__ pthread_mutex_trylock (int *) ;
 void* pthread_self () ;

__attribute__((used)) static int pthreadMutexTry(sqlite3_mutex *p){
  int rc;
  assert( p->id==SQLITE_MUTEX_RECURSIVE || pthreadMutexNotheld(p) );
  if( pthread_mutex_trylock(&p->mutex)==0 ){




    rc = SQLITE_OK;
  }else{
    rc = SQLITE_BUSY;
  }







  return rc;
}
