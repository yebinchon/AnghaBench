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
struct script_ctx {int /*<<< orphan*/  client; } ;
struct TYPE_9__ {char* prefix; char* level; char* text; int num_args; char** args; int const reason; scalar_t__ error; char* name; int id; int /*<<< orphan*/  result; int /*<<< orphan*/ * data; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ mpv_event_property ;
typedef  TYPE_1__ mpv_event_log_message ;
typedef  TYPE_1__ mpv_event_hook ;
typedef  TYPE_1__ mpv_event_end_file ;
typedef  TYPE_1__ mpv_event_command ;
typedef  TYPE_1__ mpv_event_client_message ;
struct TYPE_10__ {int event_id; double reply_userdata; scalar_t__ error; TYPE_1__* data; } ;
typedef  TYPE_7__ mpv_event ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  MPV_END_FILE_REASON_EOF 142 
#define  MPV_END_FILE_REASON_ERROR 141 
#define  MPV_END_FILE_REASON_QUIT 140 
#define  MPV_END_FILE_REASON_REDIRECT 139 
#define  MPV_END_FILE_REASON_STOP 138 
#define  MPV_EVENT_CLIENT_MESSAGE 137 
#define  MPV_EVENT_COMMAND_REPLY 136 
#define  MPV_EVENT_END_FILE 135 
#define  MPV_EVENT_HOOK 134 
#define  MPV_EVENT_LOG_MESSAGE 133 
#define  MPV_EVENT_PROPERTY_CHANGE 132 
#define  MPV_FORMAT_DOUBLE 131 
#define  MPV_FORMAT_FLAG 130 
#define  MPV_FORMAT_NODE 129 
#define  MPV_FORMAT_STRING 128 
 struct script_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (scalar_t__) ; 
 char* FUNC11 (int) ; 
 TYPE_7__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(lua_State *L)
{
    struct script_ctx *ctx = FUNC0(L);

    mpv_event *event = FUNC12(ctx->client, FUNC1(L, 1, 1e20));

    FUNC2(L); // event
    FUNC7(L, FUNC11(event->event_id)); // event name
    FUNC8(L, -2, "event"); // event

    if (event->reply_userdata) {
        FUNC6(L, event->reply_userdata);
        FUNC8(L, -2, "id");
    }

    if (event->error < 0) {
        FUNC7(L, FUNC10(event->error)); // event err
        FUNC8(L, -2, "error"); // event
    }

    switch (event->event_id) {
    case MPV_EVENT_LOG_MESSAGE: {
        mpv_event_log_message *msg = event->data;

        FUNC7(L, msg->prefix); // event s
        FUNC8(L, -2, "prefix"); // event
        FUNC7(L, msg->level); // event s
        FUNC8(L, -2, "level"); // event
        FUNC7(L, msg->text); // event s
        FUNC8(L, -2, "text"); // event
        break;
    }
    case MPV_EVENT_CLIENT_MESSAGE: {
        mpv_event_client_message *msg = event->data;

        FUNC2(L); // event args
        for (int n = 0; n < msg->num_args; n++) {
            FUNC4(L, n + 1); // event args N
            FUNC7(L, msg->args[n]); // event args N val
            FUNC9(L, -3); // event args
        }
        FUNC8(L, -2, "args"); // event
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
        FUNC7(L, reason); // event reason
        FUNC8(L, -2, "reason"); // event

        if (eef->reason == MPV_END_FILE_REASON_ERROR) {
            FUNC7(L, FUNC10(eef->error)); // event error
            FUNC8(L, -2, "error"); // event
        }
        break;
    }
    case MPV_EVENT_PROPERTY_CHANGE: {
        mpv_event_property *prop = event->data;
        FUNC7(L, prop->name);
        FUNC8(L, -2, "name");
        switch (prop->format) {
        case MPV_FORMAT_NODE:
            FUNC13(L, prop->data);
            break;
        case MPV_FORMAT_DOUBLE:
            FUNC6(L, *(double *)prop->data);
            break;
        case MPV_FORMAT_FLAG:
            FUNC3(L, *(int *)prop->data);
            break;
        case MPV_FORMAT_STRING:
            FUNC7(L, *(char **)prop->data);
            break;
        default:
            FUNC5(L);
        }
        FUNC8(L, -2, "data");
        break;
    }
    case MPV_EVENT_HOOK: {
        mpv_event_hook *hook = event->data;
        FUNC4(L, hook->id);
        FUNC8(L, -2, "hook_id");
        break;
    }
    case MPV_EVENT_COMMAND_REPLY: {
        mpv_event_command *cmd = event->data;
        FUNC13(L, &cmd->result);
        FUNC8(L, -2, "result");
        break;
    }
    default: ;
    }

    // return event
    return 1;
}