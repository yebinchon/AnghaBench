#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* prefix; char* level; char* text; int num_args; char** args; int const reason; scalar_t__ error; char* name; double id; int /*<<< orphan*/  result; int /*<<< orphan*/ * data; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ mpv_event_property ;
typedef  TYPE_1__ mpv_event_log_message ;
typedef  TYPE_1__ mpv_event_hook ;
typedef  TYPE_1__ mpv_event_end_file ;
typedef  TYPE_1__ mpv_event_command ;
typedef  TYPE_1__ mpv_event_client_message ;
struct TYPE_10__ {int event_id; double reply_userdata; scalar_t__ error; TYPE_1__* data; } ;
typedef  TYPE_7__ mpv_event ;
typedef  int /*<<< orphan*/  js_State ;
typedef  double int64_t ;

/* Variables and functions */
#define  MPV_END_FILE_REASON_EOF 143 
#define  MPV_END_FILE_REASON_ERROR 142 
#define  MPV_END_FILE_REASON_QUIT 141 
#define  MPV_END_FILE_REASON_REDIRECT 140 
#define  MPV_END_FILE_REASON_STOP 139 
#define  MPV_EVENT_CLIENT_MESSAGE 138 
#define  MPV_EVENT_COMMAND_REPLY 137 
#define  MPV_EVENT_END_FILE 136 
#define  MPV_EVENT_HOOK 135 
#define  MPV_EVENT_LOG_MESSAGE 134 
#define  MPV_EVENT_PROPERTY_CHANGE 133 
#define  MPV_FORMAT_DOUBLE 132 
#define  MPV_FORMAT_FLAG 131 
#define  MPV_FORMAT_INT64 130 
#define  MPV_FORMAT_NODE 129 
#define  MPV_FORMAT_STRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (scalar_t__) ; 
 char* FUNC14 (int) ; 
 TYPE_7__* FUNC15 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(js_State *J)
{
    int top = FUNC2(J);
    double timeout = FUNC3(J, 1) ? FUNC12(J, 1) : -1;
    mpv_event *event = FUNC15(FUNC1(J), timeout);

    FUNC5(J); // the reply
    FUNC9(J, FUNC14(event->event_id));
    FUNC11(J, -2, "event");  // reply.event (is an event name)

    if (event->reply_userdata) {
        FUNC8(J, event->reply_userdata);
        FUNC11(J, -2, "id");   // reply.id
    }

    if (event->error < 0) {
        // TODO: untested
        FUNC9(J, FUNC13(event->error));
        FUNC11(J, -2, "error");  // reply.error
    }

    switch (event->event_id) {
    case MPV_EVENT_LOG_MESSAGE: {
        mpv_event_log_message *msg = event->data;

        FUNC9(J, msg->prefix);
        FUNC11(J, -2, "prefix");  // reply.prefix (e.g. "cplayer")
        FUNC9(J, msg->level);
        FUNC11(J, -2, "level");  // reply.level (e.g. "v" or "info")
        FUNC9(J, msg->text);
        FUNC11(J, -2, "text");  // reply.text
        break;
    }

    case MPV_EVENT_CLIENT_MESSAGE: {
        mpv_event_client_message *msg = event->data;

        FUNC4(J);  // reply.args
        for (int n = 0; n < msg->num_args; n++) {
            FUNC9(J, msg->args[n]);
            FUNC10(J, -2, n);
        }
        FUNC11(J, -2, "args");  // reply.args (is a strings array)
        break;
    }

    case MPV_EVENT_END_FILE: {
        mpv_event_end_file *eef = event->data;
        const char *reason;

        switch (eef->reason) {
        case MPV_END_FILE_REASON_EOF: reason = "eof"; break;
        case MPV_END_FILE_REASON_STOP: reason = "stop"; break;
        case MPV_END_FILE_REASON_QUIT: reason = "quit"; break;
        case MPV_END_FILE_REASON_ERROR: reason = "error"; break;
        case MPV_END_FILE_REASON_REDIRECT: reason = "redirect"; break;
        default:
            reason = "unknown";
        }
        FUNC9(J, reason);
        FUNC11(J, -2, "reason");  // reply.reason

        if (eef->reason == MPV_END_FILE_REASON_ERROR) {
            FUNC9(J, FUNC13(eef->error));
            FUNC11(J, -2, "error");  // reply.error
        }
        break;
    }

    case MPV_EVENT_PROPERTY_CHANGE: {
        mpv_event_property *prop = event->data;
        FUNC9(J, prop->name);
        FUNC11(J, -2, "name");  // reply.name (is a property name)

        switch (prop->format) {
        case MPV_FORMAT_NODE:   FUNC16(J, prop->data); break;
        case MPV_FORMAT_DOUBLE: FUNC8(J, *(double *)prop->data); break;
        case MPV_FORMAT_INT64:  FUNC8(J, *(int64_t *)prop->data); break;
        case MPV_FORMAT_FLAG:   FUNC6(J, *(int *)prop->data); break;
        case MPV_FORMAT_STRING: FUNC9(J, *(char **)prop->data); break;
        default:
            FUNC7(J);  // also for FORMAT_NONE, e.g. observe type "none"
        }
        FUNC11(J, -2, "data");  // reply.data (value as observed type)
        break;
    }

    case MPV_EVENT_HOOK: {
        mpv_event_hook *hook = event->data;
        FUNC8(J, hook->id);
        FUNC11(J, -2, "hook_id");  // reply.hook_id (is a number)
        break;
    }

    case MPV_EVENT_COMMAND_REPLY: {
        mpv_event_command *cmd = event->data;
        FUNC16(J, &cmd->result);
        FUNC11(J, -2, "result");  // reply.result (mpv node)
        break;
    }
    }  // switch (event->event_id)

    FUNC0(top == FUNC2(J) - 1);
}