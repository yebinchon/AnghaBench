#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mpv_handle {int num_properties; scalar_t__ lowest_changed; int /*<<< orphan*/  lock; TYPE_1__** properties; } ;
struct mp_client_api {int num_clients; int /*<<< orphan*/  lock; struct mpv_handle** clients; } ;
struct MPContext {struct mp_client_api* clients; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpv_handle*,int) ; 
 int FUNC1 (struct MPContext*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mpv_handle*) ; 

void FUNC5(struct MPContext *mpctx, const char *name)
{
    struct mp_client_api *clients = mpctx->clients;
    int id = FUNC1(mpctx, name);

    FUNC2(&clients->lock);

    for (int n = 0; n < clients->num_clients; n++) {
        struct mpv_handle *client = clients->clients[n];
        FUNC2(&client->lock);
        for (int i = 0; i < client->num_properties; i++) {
            if (client->properties[i]->id == id)
                FUNC0(client, i);
        }
        if (client->lowest_changed < client->num_properties)
            FUNC4(client);
        FUNC3(&client->lock);
    }

    FUNC3(&clients->lock);
}