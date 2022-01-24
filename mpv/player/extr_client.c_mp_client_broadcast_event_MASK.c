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
struct mpv_event {int event_id; void* data; } ;
struct mp_client_api {int num_clients; int /*<<< orphan*/  lock; int /*<<< orphan*/ * clients; } ;
struct MPContext {struct mp_client_api* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mpv_event*,int) ; 

void FUNC3(struct MPContext *mpctx, int event, void *data)
{
    struct mp_client_api *clients = mpctx->clients;

    FUNC0(&clients->lock);

    for (int n = 0; n < clients->num_clients; n++) {
        struct mpv_event event_data = {
            .event_id = event,
            .data = data,
        };
        FUNC2(clients->clients[n], &event_data, true);
    }

    FUNC1(&clients->lock);
}