#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int rrdpush_sender_spawn; int /*<<< orphan*/  hostname; int /*<<< orphan*/  rrdpush_sender_thread; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_THREAD_OPTION_JOINABLE ; 
 int /*<<< orphan*/  NETDATA_THREAD_TAG_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  rrdpush_sender_thread ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RRDHOST *host) {
    FUNC3(host);

    if(!host->rrdpush_sender_spawn) {
        char tag[NETDATA_THREAD_TAG_MAX + 1];
        FUNC4(tag, NETDATA_THREAD_TAG_MAX, "STREAM_SENDER[%s]", host->hostname);

        if(FUNC1(&host->rrdpush_sender_thread, tag, NETDATA_THREAD_OPTION_JOINABLE, rrdpush_sender_thread, (void *) host))
            FUNC0("STREAM %s [send]: failed to create new thread for client.", host->hostname);
        else
            host->rrdpush_sender_spawn = 1;
    }

    FUNC2(host);
}