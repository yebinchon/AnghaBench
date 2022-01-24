#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* new_value_string; struct TYPE_4__* old_value_string; struct TYPE_4__* info; struct TYPE_4__* units; struct TYPE_4__* source; struct TYPE_4__* recipient; struct TYPE_4__* exec; struct TYPE_4__* family; struct TYPE_4__* chart; struct TYPE_4__* name; } ;
typedef  TYPE_1__ ALARM_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

inline void FUNC1(ALARM_ENTRY *ae) {
    FUNC0(ae->name);
    FUNC0(ae->chart);
    FUNC0(ae->family);
    FUNC0(ae->exec);
    FUNC0(ae->recipient);
    FUNC0(ae->source);
    FUNC0(ae->units);
    FUNC0(ae->info);
    FUNC0(ae->old_value_string);
    FUNC0(ae->new_value_string);
    FUNC0(ae);
}