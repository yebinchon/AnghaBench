#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * list; } ;
struct TYPE_18__ {TYPE_1__ u; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ mpv_node ;
struct TYPE_19__ {char* prefix; char* level; char* text; int num_args; char* name; TYPE_2__* data; int /*<<< orphan*/  format; int /*<<< orphan*/ * args; } ;
typedef  TYPE_3__ mpv_event_property ;
typedef  TYPE_3__ mpv_event_log_message ;
typedef  TYPE_3__ mpv_event_client_message ;
struct TYPE_20__ {int event_id; scalar_t__ error; TYPE_3__* data; scalar_t__ reply_userdata; } ;
typedef  TYPE_6__ mpv_event ;

/* Variables and functions */
#define  MPV_EVENT_CLIENT_MESSAGE 134 
#define  MPV_EVENT_LOG_MESSAGE 133 
#define  MPV_EVENT_PROPERTY_CHANGE 132 
#define  MPV_FORMAT_DOUBLE 131 
#define  MPV_FORMAT_FLAG 130 
#define  MPV_FORMAT_NODE 129 
 int /*<<< orphan*/  MPV_FORMAT_NODE_ARRAY ; 
#define  MPV_FORMAT_STRING 128 
 char* FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_2__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,TYPE_2__*,char*,double) ; 
 int /*<<< orphan*/  FUNC5 (void*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (void*,TYPE_2__*,char*,char*) ; 

__attribute__((used)) static void FUNC9(void *ta_parent, mpv_event *event, mpv_node *dst)
{
    FUNC8(ta_parent, dst, "event", FUNC1(event->event_id));

    if (event->reply_userdata)
        FUNC6(ta_parent, dst, "id", event->reply_userdata);

    if (event->error < 0)
        FUNC8(ta_parent, dst, "error", FUNC0(event->error));

    switch (event->event_id) {
    case MPV_EVENT_LOG_MESSAGE: {
        mpv_event_log_message *msg = event->data;

        FUNC8(ta_parent, dst, "prefix", msg->prefix);
        FUNC8(ta_parent, dst, "level",  msg->level);
        FUNC8(ta_parent, dst, "text",   msg->text);

        break;
    }

    case MPV_EVENT_CLIENT_MESSAGE: {
        mpv_event_client_message *msg = event->data;

        mpv_node args_node = {.format = MPV_FORMAT_NODE_ARRAY, .u.list = NULL};
        for (int n = 0; n < msg->num_args; n++)
            FUNC2(ta_parent, &args_node, msg->args[n]);
        FUNC3(ta_parent, dst, "args", &args_node);
        break;
    }

    case MPV_EVENT_PROPERTY_CHANGE: {
        mpv_event_property *prop = event->data;

        FUNC8(ta_parent, dst, "name", prop->name);

        switch (prop->format) {
        case MPV_FORMAT_NODE:
            FUNC3(ta_parent, dst, "data", prop->data);
            break;
        case MPV_FORMAT_DOUBLE:
            FUNC4(ta_parent, dst, "data", *(double *)prop->data);
            break;
        case MPV_FORMAT_FLAG:
            FUNC5(ta_parent, dst, "data", *(int *)prop->data);
            break;
        case MPV_FORMAT_STRING:
            FUNC8(ta_parent, dst, "data", *(char **)prop->data);
            break;
        default:
            FUNC7(ta_parent, dst, "data");
        }
        break;
    }
    }
}