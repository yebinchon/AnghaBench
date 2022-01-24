#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_system ) (scalar_t__) ;} ;

/* Variables and functions */
 TYPE_1__* driver ; 
 scalar_t__ last_system_report ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(uint16_t report) {
    if (report == last_system_report) return;
    last_system_report = report;

    if (!driver) return;
    (*driver->send_system)(report);
}