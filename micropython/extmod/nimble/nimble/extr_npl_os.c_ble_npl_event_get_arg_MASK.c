#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ble_npl_event {void* arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ble_npl_event*,void*) ; 

void *FUNC1(struct ble_npl_event *ev) {
    FUNC0("ble_npl_event_get_arg(%p) -> %p\n", ev, ev->arg);
    return ev->arg;
}