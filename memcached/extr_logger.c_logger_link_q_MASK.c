#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef  TYPE_1__ logger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  logger_count ; 
 TYPE_1__* logger_stack_head ; 
 int /*<<< orphan*/  logger_stack_lock ; 
 TYPE_1__* logger_stack_tail ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(logger *l) {
    FUNC1(&logger_stack_lock);
    FUNC0(l != logger_stack_head);

    l->prev = 0;
    l->next = logger_stack_head;
    if (l->next) l->next->prev = l;
    logger_stack_head = l;
    if (logger_stack_tail == 0) logger_stack_tail = l;
    logger_count++;
    FUNC2(&logger_stack_lock);
    return;
}