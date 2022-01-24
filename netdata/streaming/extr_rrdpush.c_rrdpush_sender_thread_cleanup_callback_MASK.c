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
struct TYPE_7__ {int* rrdpush_sender_pipe; int /*<<< orphan*/  hostname; scalar_t__ rrdpush_sender_spawn; int /*<<< orphan*/  rrdpush_sender_join; int /*<<< orphan*/ * rrdpush_sender_buffer; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 size_t PIPE_READ ; 
 size_t PIPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(void *ptr) {
    RRDHOST *host = (RRDHOST *)ptr;

    FUNC7(host);
    FUNC6(host);

    FUNC2("STREAM %s [send]: sending thread cleans up...", host->hostname);

    FUNC9(host);

    // close the pipe
    if(host->rrdpush_sender_pipe[PIPE_READ] != -1) {
        FUNC1(host->rrdpush_sender_pipe[PIPE_READ]);
        host->rrdpush_sender_pipe[PIPE_READ] = -1;
    }

    if(host->rrdpush_sender_pipe[PIPE_WRITE] != -1) {
        FUNC1(host->rrdpush_sender_pipe[PIPE_WRITE]);
        host->rrdpush_sender_pipe[PIPE_WRITE] = -1;
    }

    FUNC0(host->rrdpush_sender_buffer);
    host->rrdpush_sender_buffer = NULL;

    if(!host->rrdpush_sender_join) {
        FUNC2("STREAM %s [send]: sending thread detaches itself.", host->hostname);
        FUNC3(FUNC4());
    }

    host->rrdpush_sender_spawn = 0;

    FUNC2("STREAM %s [send]: sending thread now exits.", host->hostname);

    FUNC5(host);
    FUNC8(host);
}