#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct mpv_handle {int dummy; } ;
struct TYPE_9__ {char* start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__,TYPE_1__*) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__) ; 
 char* FUNC2 (void*,TYPE_1__) ; 
 char* FUNC3 (struct mpv_handle*,void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*) ; 
 char* FUNC8 (struct mpv_handle*,void*,char*) ; 

char *FUNC9(struct mpv_handle *client, void *ctx, bstr *buf)
{
    void *tmp = FUNC6(NULL);

    bstr rest;
    bstr line = FUNC0(*buf, &rest);
    char *line0 = FUNC2(tmp, line);
    FUNC7(tmp, buf->start);
    *buf = FUNC1(NULL, rest);

    FUNC4(&line0);

    char *reply_msg = NULL;
    if (line0[0] == '\0' || line0[0] == '#') {
        // skip
    } else if (line0[0] == '{') {
        reply_msg = FUNC3(client, tmp, line0);
    } else {
        reply_msg = FUNC8(client, tmp, line0);
    }

    FUNC7(ctx, reply_msg);
    FUNC5(tmp);
    return reply_msg;
}