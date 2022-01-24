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
struct collection_thread_status {int /*<<< orphan*/  rusage; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUSAGE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *timer_data) {
    struct collection_thread_status *status = timer_data;
    FUNC0(RUSAGE_THREAD, &status->rusage);
}