#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* xFree ) (void*) ;} ;
struct TYPE_5__ {TYPE_1__ m; scalar_t__ bMemstat; } ;

/* Variables and functions */
 scalar_t__ MEMTYPE_HEAP ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_COUNT ; 
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ mem0 ; 
 TYPE_2__ sqlite3GlobalConfig ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

void FUNC9(void *p){
  if( p==0 ) return;  /* IMP: R-49053-54554 */
  FUNC0( FUNC2(p, MEMTYPE_HEAP) );
  FUNC0( FUNC3(p, (u8)~MEMTYPE_HEAP) );
  if( sqlite3GlobalConfig.bMemstat ){
    FUNC5(mem0.mutex);
    FUNC4(SQLITE_STATUS_MEMORY_USED, FUNC1(p));
    FUNC4(SQLITE_STATUS_MALLOC_COUNT, 1);
    sqlite3GlobalConfig.m.xFree(p);
    FUNC6(mem0.mutex);
  }else{
    sqlite3GlobalConfig.m.xFree(p);
  }
}