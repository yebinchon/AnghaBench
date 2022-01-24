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
struct MPContext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpv_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int,void*) ; 
 int FUNC2 (struct MPContext*,char const*,int /*<<< orphan*/ ,int,void*) ; 

int FUNC3(struct MPContext *mpctx, const char *client_name,
                             int event, void *data)
{
    if (!client_name) {
        FUNC1(mpctx, event, data);
        return 0;
    }

    struct mpv_event event_data = {
        .event_id = event,
        .data = data,
    };

    FUNC0(&event_data);
    return FUNC2(mpctx, client_name, 0, event, event_data.data);
}