#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_2__ {int alarmThreshold; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 TYPE_1__ mem0 ; 
 int /*<<< orphan*/  softHeapLimitEnforcer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

sqlite3_int64 FUNC6(sqlite3_int64 n){
  sqlite3_int64 priorLimit;
  sqlite3_int64 excess;
#ifndef SQLITE_OMIT_AUTOINIT
  int rc = FUNC1();
  if( rc ) return -1;
#endif
  FUNC3(mem0.mutex);
  priorLimit = mem0.alarmThreshold;
  FUNC4(mem0.mutex);
  if( n<0 ) return priorLimit;
  if( n>0 ){
    FUNC0(softHeapLimitEnforcer, 0, n);
  }else{
    FUNC0(0, 0, 0);
  }
  excess = FUNC2() - n;
  if( excess>0 ) FUNC5((int)(excess & 0x7fffffff));
  return priorLimit;
}