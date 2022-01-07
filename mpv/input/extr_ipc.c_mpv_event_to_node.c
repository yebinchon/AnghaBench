
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int * list; } ;
struct TYPE_18__ {TYPE_1__ u; int format; } ;
typedef TYPE_2__ mpv_node ;
struct TYPE_19__ {char* prefix; char* level; char* text; int num_args; char* name; TYPE_2__* data; int format; int * args; } ;
typedef TYPE_3__ mpv_event_property ;
typedef TYPE_3__ mpv_event_log_message ;
typedef TYPE_3__ mpv_event_client_message ;
struct TYPE_20__ {int event_id; scalar_t__ error; TYPE_3__* data; scalar_t__ reply_userdata; } ;
typedef TYPE_6__ mpv_event ;
 int MPV_FORMAT_NODE_ARRAY ;

 char* mpv_error_string (scalar_t__) ;
 char* mpv_event_name (int) ;
 int mpv_node_array_add_string (void*,TYPE_2__*,int ) ;
 int mpv_node_map_add (void*,TYPE_2__*,char*,TYPE_2__*) ;
 int mpv_node_map_add_double (void*,TYPE_2__*,char*,double) ;
 int mpv_node_map_add_flag (void*,TYPE_2__*,char*,int) ;
 int mpv_node_map_add_int64 (void*,TYPE_2__*,char*,scalar_t__) ;
 int mpv_node_map_add_null (void*,TYPE_2__*,char*) ;
 int mpv_node_map_add_string (void*,TYPE_2__*,char*,char*) ;

__attribute__((used)) static void mpv_event_to_node(void *ta_parent, mpv_event *event, mpv_node *dst)
{
    mpv_node_map_add_string(ta_parent, dst, "event", mpv_event_name(event->event_id));

    if (event->reply_userdata)
        mpv_node_map_add_int64(ta_parent, dst, "id", event->reply_userdata);

    if (event->error < 0)
        mpv_node_map_add_string(ta_parent, dst, "error", mpv_error_string(event->error));

    switch (event->event_id) {
    case 133: {
        mpv_event_log_message *msg = event->data;

        mpv_node_map_add_string(ta_parent, dst, "prefix", msg->prefix);
        mpv_node_map_add_string(ta_parent, dst, "level", msg->level);
        mpv_node_map_add_string(ta_parent, dst, "text", msg->text);

        break;
    }

    case 134: {
        mpv_event_client_message *msg = event->data;

        mpv_node args_node = {.format = MPV_FORMAT_NODE_ARRAY, .u.list = ((void*)0)};
        for (int n = 0; n < msg->num_args; n++)
            mpv_node_array_add_string(ta_parent, &args_node, msg->args[n]);
        mpv_node_map_add(ta_parent, dst, "args", &args_node);
        break;
    }

    case 132: {
        mpv_event_property *prop = event->data;

        mpv_node_map_add_string(ta_parent, dst, "name", prop->name);

        switch (prop->format) {
        case 129:
            mpv_node_map_add(ta_parent, dst, "data", prop->data);
            break;
        case 131:
            mpv_node_map_add_double(ta_parent, dst, "data", *(double *)prop->data);
            break;
        case 130:
            mpv_node_map_add_flag(ta_parent, dst, "data", *(int *)prop->data);
            break;
        case 128:
            mpv_node_map_add_string(ta_parent, dst, "data", *(char **)prop->data);
            break;
        default:
            mpv_node_map_add_null(ta_parent, dst, "data");
        }
        break;
    }
    }
}
