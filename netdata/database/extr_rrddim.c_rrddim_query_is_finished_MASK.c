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
struct TYPE_2__ {int finished; } ;
struct rrddim_query_handle {TYPE_1__ slotted; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct rrddim_query_handle *handle) {
    return handle->slotted.finished;
}