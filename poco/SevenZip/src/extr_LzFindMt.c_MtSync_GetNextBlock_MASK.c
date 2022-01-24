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
struct TYPE_3__ {int numProcessedBlocks; void* csWasEntered; int /*<<< orphan*/  cs; int /*<<< orphan*/  filledSemaphore; int /*<<< orphan*/  freeSemaphore; int /*<<< orphan*/  wasStarted; int /*<<< orphan*/  canStart; int /*<<< orphan*/  wasStopped; void* exit; void* stopWriting; void* needStart; } ;
typedef  TYPE_1__ CMtSync ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* False ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* True ; 

void FUNC7(CMtSync *p)
{
  if (p->needStart)
  {
    p->numProcessedBlocks = 1;
    p->needStart = False;
    p->stopWriting = False;
    p->exit = False;
    FUNC2(&p->wasStarted);
    FUNC2(&p->wasStopped);

    FUNC3(&p->canStart);
    FUNC4(&p->wasStarted);
  }
  else
  {
    FUNC1(&p->cs);
    p->csWasEntered = False;
    p->numProcessedBlocks++;
    FUNC5(&p->freeSemaphore);
  }
  FUNC6(&p->filledSemaphore);
  FUNC0(&p->cs);
  p->csWasEntered = True;
}