#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {double i; double r; } ;
struct TYPE_9__ {int flags; TYPE_1__ u; } ;
struct TYPE_8__ {char* zText; scalar_t__ mxAlloc; size_t nChar; } ;
typedef  TYPE_2__ StrAccum ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int MEM_Int ; 
 int MEM_IntReal ; 
 int MEM_Real ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,double) ; 

__attribute__((used)) static void FUNC3(int sz, char *zBuf, Mem *p){
  StrAccum acc;
  FUNC0( p->flags & (MEM_Int|MEM_Real|MEM_IntReal) );
  FUNC1(&acc, 0, zBuf, sz, 0);
  if( p->flags & MEM_Int ){
    FUNC2(&acc, "%lld", p->u.i);
  }else if( p->flags & MEM_IntReal ){
    FUNC2(&acc, "%!.15g", (double)p->u.i);
  }else{
    FUNC2(&acc, "%!.15g", p->u.r);
  }
  FUNC0( acc.zText==zBuf && acc.mxAlloc<=0 );
  zBuf[acc.nChar] = 0; /* Fast version of sqlite3StrAccumFinish(&acc) */
}