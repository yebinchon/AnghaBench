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
struct TYPE_6__ {int /*<<< orphan*/  header; int /*<<< orphan*/  ready_state; int /*<<< orphan*/  doc; } ;
typedef  TYPE_1__ ready_state_task_t ;
struct TYPE_7__ {int /*<<< orphan*/  document; } ;
typedef  int /*<<< orphan*/  READYSTATE ;
typedef  TYPE_2__ DocHost ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ready_state_proc ; 
 int /*<<< orphan*/  ready_state_task_destr ; 

__attribute__((used)) static void FUNC3(DocHost *This, READYSTATE ready_state)
{
    ready_state_task_t *task = FUNC1(sizeof(ready_state_task_t));

    FUNC0(This->document);
    task->doc = This->document;
    task->ready_state = ready_state;

    FUNC2(This, &task->header, ready_state_proc, ready_state_task_destr, FALSE);
}