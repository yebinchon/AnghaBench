#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bsc; } ;
typedef  TYPE_1__ task_navigate_bsc_t ;
typedef  int /*<<< orphan*/  task_header_t ;
struct TYPE_7__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_2__ DocHost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(DocHost *This, task_header_t *t)
{
    task_navigate_bsc_t *task = (task_navigate_bsc_t*)t;

    if(!This->hwnd)
        FUNC0(This);

    FUNC1(This, task->bsc, NULL);
}