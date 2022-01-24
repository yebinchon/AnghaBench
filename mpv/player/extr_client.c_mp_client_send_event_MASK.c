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
typedef  int /*<<< orphan*/  uint64_t ;
struct mpv_handle {int dummy; } ;
struct mpv_event {int event_id; void* data; int /*<<< orphan*/  reply_userdata; } ;
struct mp_client_api {int /*<<< orphan*/  lock; } ;
struct MPContext {struct mp_client_api* clients; } ;

/* Variables and functions */
 struct mpv_handle* FUNC0 (struct mp_client_api*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mpv_handle*,struct mpv_event*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

int FUNC6(struct MPContext *mpctx, const char *client_name,
                         uint64_t reply_userdata, int event, void *data)
{
    if (!client_name) {
        FUNC1(mpctx, event, data);
        FUNC5(data);
        return 0;
    }

    struct mp_client_api *clients = mpctx->clients;
    int r = 0;

    struct mpv_event event_data = {
        .event_id = event,
        .data = data,
        .reply_userdata = reply_userdata,
    };

    FUNC2(&clients->lock);

    struct mpv_handle *ctx = FUNC0(clients, client_name);
    if (ctx) {
        r = FUNC4(ctx, &event_data, false);
    } else {
        r = -1;
        FUNC5(data);
    }

    FUNC3(&clients->lock);

    return r;
}