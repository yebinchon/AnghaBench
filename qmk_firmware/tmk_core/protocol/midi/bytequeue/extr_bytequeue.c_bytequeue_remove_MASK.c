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
struct TYPE_3__ {int start; int length; } ;
typedef  TYPE_1__ byteQueue_t ;
typedef  int byteQueueIndex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(byteQueue_t* queue, byteQueueIndex_t numToRemove) {
    interrupt_setting_t setting = FUNC1();
    queue->start                = (queue->start + numToRemove) % queue->length;
    FUNC0(setting);
}