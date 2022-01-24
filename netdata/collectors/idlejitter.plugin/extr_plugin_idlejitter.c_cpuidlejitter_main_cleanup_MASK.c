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
struct netdata_static_thread {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_MAIN_THREAD_EXITED ; 
 int /*<<< orphan*/  NETDATA_MAIN_THREAD_EXITING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void *ptr) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)ptr;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;

    FUNC0("cleaning up...");

    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}