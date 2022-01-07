
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct mpv_handle {int dummy; } ;
struct TYPE_9__ {char* start; } ;
typedef TYPE_1__ bstr ;


 TYPE_1__ bstr_getline (TYPE_1__,TYPE_1__*) ;
 TYPE_1__ bstrdup (int *,TYPE_1__) ;
 char* bstrto0 (void*,TYPE_1__) ;
 char* json_execute_command (struct mpv_handle*,void*,char*) ;
 int json_skip_whitespace (char**) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 int talloc_steal (void*,char*) ;
 char* text_execute_command (struct mpv_handle*,void*,char*) ;

char *mp_ipc_consume_next_command(struct mpv_handle *client, void *ctx, bstr *buf)
{
    void *tmp = talloc_new(((void*)0));

    bstr rest;
    bstr line = bstr_getline(*buf, &rest);
    char *line0 = bstrto0(tmp, line);
    talloc_steal(tmp, buf->start);
    *buf = bstrdup(((void*)0), rest);

    json_skip_whitespace(&line0);

    char *reply_msg = ((void*)0);
    if (line0[0] == '\0' || line0[0] == '#') {

    } else if (line0[0] == '{') {
        reply_msg = json_execute_command(client, tmp, line0);
    } else {
        reply_msg = text_execute_command(client, tmp, line0);
    }

    talloc_steal(ctx, reply_msg);
    talloc_free(tmp);
    return reply_msg;
}
