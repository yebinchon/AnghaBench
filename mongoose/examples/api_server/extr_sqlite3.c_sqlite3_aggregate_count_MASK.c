#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* pMem; TYPE_1__* pFunc; } ;
typedef  TYPE_3__ sqlite3_context ;
struct TYPE_6__ {int n; } ;
struct TYPE_5__ {scalar_t__ xStep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1(sqlite3_context *p){
  FUNC0( p && p->pMem && p->pFunc && p->pFunc->xStep );
  return p->pMem->n;
}