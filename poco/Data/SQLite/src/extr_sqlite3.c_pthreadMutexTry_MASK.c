#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ id; int nRef; int trace; void* owner; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3_mutex ;
typedef  void* pthread_t ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 scalar_t__ SQLITE_MUTEX_RECURSIVE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (void*,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 () ; 

__attribute__((used)) static int FUNC6(sqlite3_mutex *p){
  int rc;
  FUNC0( p->id==SQLITE_MUTEX_RECURSIVE || FUNC2(p) );

#ifdef SQLITE_HOMEGROWN_RECURSIVE_MUTEX
  /* If recursive mutexes are not available, then we have to grow
  ** our own.  This implementation assumes that pthread_equal()
  ** is atomic - that it cannot be deceived into thinking self
  ** and p->owner are equal if p->owner changes between two values
  ** that are not equal to self while the comparison is taking place.
  ** This implementation also assumes a coherent cache - that 
  ** separate processes cannot read different values from the same
  ** address at the same time.  If either of these two conditions
  ** are not met, then the mutexes will fail and problems will result.
  */
  {
    pthread_t self = pthread_self();
    if( p->nRef>0 && pthread_equal(p->owner, self) ){
      p->nRef++;
      rc = SQLITE_OK;
    }else if( pthread_mutex_trylock(&p->mutex)==0 ){
      assert( p->nRef==0 );
      p->owner = self;
      p->nRef = 1;
      rc = SQLITE_OK;
    }else{
      rc = SQLITE_BUSY;
    }
  }
#else
  /* Use the built-in recursive mutexes if they are available.
  */
  if( FUNC4(&p->mutex)==0 ){
#if SQLITE_MUTEX_NREF
    p->owner = pthread_self();
    p->nRef++;
#endif
    rc = SQLITE_OK;
  }else{
    rc = SQLITE_BUSY;
  }
#endif

#ifdef SQLITE_DEBUG
  if( rc==SQLITE_OK && p->trace ){
    printf("enter mutex %p (%d) with nRef=%d\n", p, p->trace, p->nRef);
  }
#endif
  return rc;
}