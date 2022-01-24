#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_uint64 ;
struct TYPE_3__ {int /*<<< orphan*/  (* xSize ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 scalar_t__ MEMTYPE_HEAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ sqlite3GlobalConfig ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

sqlite3_uint64 FUNC4(void *p){
  FUNC0( FUNC2(p, (u8)~MEMTYPE_HEAP) );
  FUNC0( FUNC1(p, MEMTYPE_HEAP) );
  return p ? sqlite3GlobalConfig.m.xSize(p) : 0;
}