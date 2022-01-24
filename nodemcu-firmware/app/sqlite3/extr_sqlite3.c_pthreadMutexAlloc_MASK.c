#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int id; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ const sqlite3_mutex ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
#define  SQLITE3_MUTEX_INITIALIZER 130 
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
#define  SQLITE_MUTEX_FAST 129 
#define  SQLITE_MUTEX_RECURSIVE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ const* FUNC5 (int) ; 

__attribute__((used)) static sqlite3_mutex *FUNC6(int iType){
  static sqlite3_mutex staticMutexes[] = {
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER,
    SQLITE3_MUTEX_INITIALIZER
  };
  sqlite3_mutex *p;
  switch( iType ){
    case SQLITE_MUTEX_RECURSIVE: {
      p = FUNC5( sizeof(*p) );
      if( p ){
#ifdef SQLITE_HOMEGROWN_RECURSIVE_MUTEX
        /* If recursive mutexes are not available, we will have to
        ** build our own.  See below. */
        pthread_mutex_init(&p->mutex, 0);
#else
        /* Use a recursive mutex if it is available */
        pthread_mutexattr_t recursiveAttr;
        FUNC3(&recursiveAttr);
        FUNC4(&recursiveAttr, PTHREAD_MUTEX_RECURSIVE);
        FUNC1(&p->mutex, &recursiveAttr);
        FUNC2(&recursiveAttr);
#endif
      }
      break;
    }
    case SQLITE_MUTEX_FAST: {
      p = FUNC5( sizeof(*p) );
      if( p ){
        FUNC1(&p->mutex, 0);
      }
      break;
    }
    default: {
#ifdef SQLITE_ENABLE_API_ARMOR
      if( iType-2<0 || iType-2>=ArraySize(staticMutexes) ){
        (void)SQLITE_MISUSE_BKPT;
        return 0;
      }
#endif
      p = &staticMutexes[iType-2];
      break;
    }
  }
#if SQLITE_MUTEX_NREF || defined(SQLITE_ENABLE_API_ARMOR)
  if( p ) p->id = iType;
#endif
  return p;
}