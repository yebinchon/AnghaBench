
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* prefix; char* level; char* text; int num_args; char** args; int const reason; scalar_t__ error; char* name; double id; int result; int * data; int format; } ;
typedef TYPE_1__ mpv_event_property ;
typedef TYPE_1__ mpv_event_log_message ;
typedef TYPE_1__ mpv_event_hook ;
typedef TYPE_1__ mpv_event_end_file ;
typedef TYPE_1__ mpv_event_command ;
typedef TYPE_1__ mpv_event_client_message ;
struct TYPE_10__ {int event_id; double reply_userdata; scalar_t__ error; TYPE_1__* data; } ;
typedef TYPE_7__ mpv_event ;
typedef int js_State ;
typedef double int64_t ;
 int assert (int) ;
 int jclient (int *) ;
 int js_gettop (int *) ;
 scalar_t__ js_isnumber (int *,int) ;
 int js_newarray (int *) ;
 int js_newobject (int *) ;
 int js_pushboolean (int *,int) ;
 int js_pushnull (int *) ;
 int js_pushnumber (int *,double) ;
 int js_pushstring (int *,char const*) ;
 int js_setindex (int *,int,int) ;
 int js_setproperty (int *,int,char*) ;
 int js_tonumber (int *,int) ;
 char* mpv_error_string (scalar_t__) ;
 char* mpv_event_name (int) ;
 TYPE_7__* mpv_wait_event (int ,double) ;
 int pushnode (int *,int *) ;

__attribute__((used)) static void script_wait_event(js_State *J)
{
    int top = js_gettop(J);
    double timeout = js_isnumber(J, 1) ? js_tonumber(J, 1) : -1;
    mpv_event *event = mpv_wait_event(jclient(J), timeout);

    js_newobject(J);
    js_pushstring(J, mpv_event_name(event->event_id));
    js_setproperty(J, -2, "event");

    if (event->reply_userdata) {
        js_pushnumber(J, event->reply_userdata);
        js_setproperty(J, -2, "id");
    }

    if (event->error < 0) {

        js_pushstring(J, mpv_error_string(event->error));
        js_setproperty(J, -2, "error");
    }

    switch (event->event_id) {
    case 134: {
        mpv_event_log_message *msg = event->data;

        js_pushstring(J, msg->prefix);
        js_setproperty(J, -2, "prefix");
        js_pushstring(J, msg->level);
        js_setproperty(J, -2, "level");
        js_pushstring(J, msg->text);
        js_setproperty(J, -2, "text");
        break;
    }

    case 138: {
        mpv_event_client_message *msg = event->data;

        js_newarray(J);
        for (int n = 0; n < msg->num_args; n++) {
            js_pushstring(J, msg->args[n]);
            js_setindex(J, -2, n);
        }
        js_setproperty(J, -2, "args");
        break;
    }

    case 136: {
        mpv_event_end_file *eef = event->data;
        const char *reason;

        switch (eef->reason) {
        case 143: reason = "eof"; break;
        case 139: reason = "stop"; break;
        case 141: reason = "quit"; break;
        case 142: reason = "error"; break;
        case 140: reason = "redirect"; break;
        default:
            reason = "unknown";
        }
        js_pushstring(J, reason);
        js_setproperty(J, -2, "reason");

        if (eef->reason == 142) {
            js_pushstring(J, mpv_error_string(eef->error));
            js_setproperty(J, -2, "error");
        }
        break;
    }

    case 133: {
        mpv_event_property *prop = event->data;
        js_pushstring(J, prop->name);
        js_setproperty(J, -2, "name");

        switch (prop->format) {
        case 129: pushnode(J, prop->data); break;
        case 132: js_pushnumber(J, *(double *)prop->data); break;
        case 130: js_pushnumber(J, *(int64_t *)prop->data); break;
        case 131: js_pushboolean(J, *(int *)prop->data); break;
        case 128: js_pushstring(J, *(char **)prop->data); break;
        default:
            js_pushnull(J);
        }
        js_setproperty(J, -2, "data");
        break;
    }

    case 135: {
        mpv_event_hook *hook = event->data;
        js_pushnumber(J, hook->id);
        js_setproperty(J, -2, "hook_id");
        break;
    }

    case 137: {
        mpv_event_command *cmd = event->data;
        pushnode(J, &cmd->result);
        js_setproperty(J, -2, "result");
        break;
    }
    }

    assert(top == js_gettop(J) - 1);
}
