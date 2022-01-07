
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nRef; scalar_t__ id; int mutex; } ;
typedef TYPE_1__ sqlite3_mutex ;


 int SQLITE_MISUSE_BKPT ;
 scalar_t__ SQLITE_MUTEX_FAST ;
 scalar_t__ SQLITE_MUTEX_RECURSIVE ;
 int assert (int) ;
 int pthread_mutex_destroy (int *) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void pthreadMutexFree(sqlite3_mutex *p){
  assert( p->nRef==0 );



  {
    pthread_mutex_destroy(&p->mutex);
    sqlite3_free(p);
  }





}
