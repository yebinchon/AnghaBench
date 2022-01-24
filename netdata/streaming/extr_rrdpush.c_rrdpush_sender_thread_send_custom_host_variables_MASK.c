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
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rrdpush_sender_thread_custom_host_variables_callback ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(RRDHOST *host) {
    int ret = FUNC1(host, rrdpush_sender_thread_custom_host_variables_callback, host);
    (void)ret;

    FUNC0(D_STREAM, "RRDVAR sent %d VARIABLES", ret);
}