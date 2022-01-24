#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int rrdpush_sender_error_shown; int* rrdpush_sender_pipe; int /*<<< orphan*/  hostname; int /*<<< orphan*/  rrdpush_sender_connected; int /*<<< orphan*/  rrdpush_sender_buffer; int /*<<< orphan*/  rrdpush_sender_spawn; scalar_t__ rrdpush_send_enabled; } ;
struct TYPE_11__ {TYPE_2__* rrdhost; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;

/* Variables and functions */
 size_t PIPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int,char*,int) ; 

void FUNC11(RRDSET *st) {
    if(FUNC9(!FUNC8(st)))
        return;

    RRDHOST *host = st->rrdhost;

    FUNC3(host);

    if(FUNC9(host->rrdpush_send_enabled && !host->rrdpush_sender_spawn))
        FUNC7(host);

    if(FUNC9(!host->rrdpush_sender_buffer || !host->rrdpush_sender_connected)) {
        if(FUNC9(!host->rrdpush_sender_error_shown))
            FUNC0("STREAM %s [send]: not ready - discarding collected metrics.", host->hostname);

        host->rrdpush_sender_error_shown = 1;

        FUNC4(host);
        return;
    }
    else if(FUNC9(host->rrdpush_sender_error_shown)) {
        FUNC1("STREAM %s [send]: sending metrics...", host->hostname);
        host->rrdpush_sender_error_shown = 0;
    }

    if(FUNC2(st))
        FUNC5(st);

    FUNC6(st);

    // signal the sender there are more data
    if(host->rrdpush_sender_pipe[PIPE_WRITE] != -1 && FUNC10(host->rrdpush_sender_pipe[PIPE_WRITE], " ", 1) == -1)
        FUNC0("STREAM %s [send]: cannot write to internal pipe", host->hostname);

    FUNC4(host);
}