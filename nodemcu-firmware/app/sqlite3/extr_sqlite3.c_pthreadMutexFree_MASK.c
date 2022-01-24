#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nRef; scalar_t__ id; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3_mutex ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 scalar_t__ SQLITE_MUTEX_FAST ; 
 scalar_t__ SQLITE_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(sqlite3_mutex *p){
  FUNC0( p->nRef==0 );
#if SQLITE_ENABLE_API_ARMOR
  if( p->id==SQLITE_MUTEX_FAST || p->id==SQLITE_MUTEX_RECURSIVE )
#endif
  {
    FUNC1(&p->mutex);
    FUNC2(p);
  }
#ifdef SQLITE_ENABLE_API_ARMOR
  else{
    (void)SQLITE_MISUSE_BKPT;
  }
#endif
}