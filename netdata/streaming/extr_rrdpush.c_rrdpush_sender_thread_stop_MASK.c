#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ netdata_thread_t ;
struct TYPE_7__ {int rrdpush_sender_join; scalar_t__ rrdpush_sender_thread; int /*<<< orphan*/  hostname; scalar_t__ rrdpush_sender_spawn; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(RRDHOST *host) {
    FUNC5(host);
    FUNC4(host);

    netdata_thread_t thr = 0;

    if(host->rrdpush_sender_spawn) {
        FUNC0("STREAM %s [send]: signaling sending thread to stop...", host->hostname);

        // signal the thread that we want to join it
        host->rrdpush_sender_join = 1;

        // copy the thread id, so that we will be waiting for the right one
        // even if a new one has been spawn
        thr = host->rrdpush_sender_thread;

        // signal it to cancel
        FUNC1(host->rrdpush_sender_thread);
    }

    FUNC3(host);
    FUNC6(host);

    if(thr != 0) {
        FUNC0("STREAM %s [send]: waiting for the sending thread to stop...", host->hostname);
        void *result;
        FUNC2(thr, &result);
        FUNC0("STREAM %s [send]: sending thread has exited.", host->hostname);
    }
}