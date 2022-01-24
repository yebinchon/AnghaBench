#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bDone; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ SortSubtask ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC3(void *pCtx){
  SortSubtask *pTask = (SortSubtask*)pCtx;
  int rc;                         /* Return code */
  FUNC1( pTask->bDone==0 );
  rc = FUNC2(pTask, &pTask->list);
  pTask->bDone = 1;
  return FUNC0(rc);
}