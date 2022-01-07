
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * list; } ;
struct TYPE_6__ {TYPE_1__ u; int format; } ;
typedef TYPE_2__ mpv_node ;
typedef int mpv_event ;


 int MPV_FORMAT_NODE_MAP ;
 int json_write (char**,TYPE_2__*) ;
 int mpv_event_to_node (void*,int *,TYPE_2__*) ;
 char* ta_talloc_strdup_append (char*,char*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 char* talloc_strdup (int *,char*) ;

char *mp_json_encode_event(mpv_event *event)
{
    void *ta_parent = talloc_new(((void*)0));
    mpv_node event_node = {.format = MPV_FORMAT_NODE_MAP, .u.list = ((void*)0)};

    mpv_event_to_node(ta_parent, event, &event_node);

    char *output = talloc_strdup(((void*)0), "");
    json_write(&output, &event_node);
    output = ta_talloc_strdup_append(output, "\n");

    talloc_free(ta_parent);

    return output;
}
