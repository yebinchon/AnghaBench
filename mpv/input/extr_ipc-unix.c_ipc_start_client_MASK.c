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
struct mp_ipc_ctx {int /*<<< orphan*/  client_api; } ;
struct client_arg {int /*<<< orphan*/  client_fd; scalar_t__ close_client_fd; scalar_t__ client; int /*<<< orphan*/  log; int /*<<< orphan*/  client_name; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  client_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct client_arg*) ; 
 int /*<<< orphan*/  FUNC5 (struct client_arg*) ; 

__attribute__((used)) static void FUNC6(struct mp_ipc_ctx *ctx, struct client_arg *client)
{
    client->client = FUNC2(ctx->client_api, client->client_name);
    if (!client->client)
        goto err;

    client->log = FUNC1(client->client);

    pthread_t client_thr;
    if (FUNC4(&client_thr, NULL, client_thread, client))
        goto err;

    return;

err:
    if (client->client)
        FUNC3(client->client);

    if (client->close_client_fd)
        FUNC0(client->client_fd);

    FUNC5(client);
}