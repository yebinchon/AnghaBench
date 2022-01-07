
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct script_ctx {int client; } ;
struct TYPE_9__ {char* prefix; char* level; char* text; int num_args; char** args; int const reason; scalar_t__ error; char* name; int id; int result; int * data; int format; } ;
typedef TYPE_1__ mpv_event_property ;
typedef TYPE_1__ mpv_event_log_message ;
typedef TYPE_1__ mpv_event_hook ;
typedef TYPE_1__ mpv_event_end_file ;
typedef TYPE_1__ mpv_event_command ;
typedef TYPE_1__ mpv_event_client_message ;
struct TYPE_10__ {int event_id; double reply_userdata; scalar_t__ error; TYPE_1__* data; } ;
typedef TYPE_7__ mpv_event ;
typedef int lua_State ;
 struct script_ctx* get_ctx (int *) ;
 int luaL_optnumber (int *,int,int) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushstring (int *,char const*) ;
 int lua_setfield (int *,int,char*) ;
 int lua_settable (int *,int) ;
 char* mpv_error_string (scalar_t__) ;
 char* mpv_event_name (int) ;
 TYPE_7__* mpv_wait_event (int ,int ) ;
 int pushnode (int *,int *) ;

__attribute__((used)) static int script_wait_event(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);

    mpv_event *event = mpv_wait_event(ctx->client, luaL_optnumber(L, 1, 1e20));

    lua_newtable(L);
    lua_pushstring(L, mpv_event_name(event->event_id));
    lua_setfield(L, -2, "event");

    if (event->reply_userdata) {
        lua_pushnumber(L, event->reply_userdata);
        lua_setfield(L, -2, "id");
    }

    if (event->error < 0) {
        lua_pushstring(L, mpv_error_string(event->error));
        lua_setfield(L, -2, "error");
    }

    switch (event->event_id) {
    case 133: {
        mpv_event_log_message *msg = event->data;

        lua_pushstring(L, msg->prefix);
        lua_setfield(L, -2, "prefix");
        lua_pushstring(L, msg->level);
        lua_setfield(L, -2, "level");
        lua_pushstring(L, msg->text);
        lua_setfield(L, -2, "text");
        break;
    }
    case 137: {
        mpv_event_client_message *msg = event->data;

        lua_newtable(L);
        for (int n = 0; n < msg->num_args; n++) {
            lua_pushinteger(L, n + 1);
            lua_pushstring(L, msg->args[n]);
            lua_settable(L, -3);
        }
        lua_setfield(L, -2, "args");
        break;
    }
    case 135: {
        mpv_event_end_file *eef = event->data;
        const char *reason;
        switch (eef->reason) {
        case 142: reason = "eof"; break;
        case 138: reason = "stop"; break;
        case 140: reason = "quit"; break;
        case 141: reason = "error"; break;
        case 139: reason = "redirect"; break;
        default:
            reason = "unknown";
        }
        lua_pushstring(L, reason);
        lua_setfield(L, -2, "reason");

        if (eef->reason == 141) {
            lua_pushstring(L, mpv_error_string(eef->error));
            lua_setfield(L, -2, "error");
        }
        break;
    }
    case 132: {
        mpv_event_property *prop = event->data;
        lua_pushstring(L, prop->name);
        lua_setfield(L, -2, "name");
        switch (prop->format) {
        case 129:
            pushnode(L, prop->data);
            break;
        case 131:
            lua_pushnumber(L, *(double *)prop->data);
            break;
        case 130:
            lua_pushboolean(L, *(int *)prop->data);
            break;
        case 128:
            lua_pushstring(L, *(char **)prop->data);
            break;
        default:
            lua_pushnil(L);
        }
        lua_setfield(L, -2, "data");
        break;
    }
    case 134: {
        mpv_event_hook *hook = event->data;
        lua_pushinteger(L, hook->id);
        lua_setfield(L, -2, "hook_id");
        break;
    }
    case 136: {
        mpv_event_command *cmd = event->data;
        pushnode(L, &cmd->result);
        lua_setfield(L, -2, "result");
        break;
    }
    default: ;
    }


    return 1;
}
