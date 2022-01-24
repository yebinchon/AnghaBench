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
struct mp_client_api {int shutting_down; int /*<<< orphan*/  lock; scalar_t__ terminate_core_thread; scalar_t__ num_clients; } ;
struct MPContext {scalar_t__ is_cli; scalar_t__ outstanding_async; struct mp_client_api* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,double) ; 
 double FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct MPContext *mpctx)
{
    struct mp_client_api *clients = mpctx->clients;

    // Forcefully abort async work after 2 seconds of waiting.
    double abort_time = FUNC3() + 2;

    FUNC5(&clients->lock);

    // Prevent that new clients can appear.
    clients->shutting_down = true;

    // Wait until we can terminate.
    while (clients->num_clients || mpctx->outstanding_async ||
           !(mpctx->is_cli || clients->terminate_core_thread))
    {
        FUNC6(&clients->lock);

        double left = abort_time - FUNC3();
        if (left >= 0) {
            FUNC2(mpctx, left);
        } else {
            // Forcefully abort any ongoing async work. This is quite rude and
            // probably not what everyone wants, so it happens only after a
            // timeout.
            FUNC0(mpctx, NULL, 0, 0);
        }

        FUNC1(mpctx, MPV_EVENT_SHUTDOWN, NULL);
        FUNC4(mpctx);

        FUNC5(&clients->lock);
    }

    FUNC6(&clients->lock);
}