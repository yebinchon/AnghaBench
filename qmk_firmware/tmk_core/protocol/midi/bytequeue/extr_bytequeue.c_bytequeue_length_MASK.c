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
typedef  int /*<<< orphan*/  interrupt_setting_t ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; scalar_t__ length; } ;
typedef  TYPE_1__ byteQueue_t ;
typedef  scalar_t__ byteQueueIndex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

byteQueueIndex_t FUNC2(byteQueue_t* queue) {
    byteQueueIndex_t    len;
    interrupt_setting_t setting = FUNC1();
    if (queue->end >= queue->start)
        len = queue->end - queue->start;
    else
        len = (queue->length - queue->start) + queue->end;
    FUNC0(setting);
    return len;
}