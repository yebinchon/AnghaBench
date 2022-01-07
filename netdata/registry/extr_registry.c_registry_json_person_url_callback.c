
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
struct web_client {TYPE_1__ response; } ;
struct registry_json_walk_person_urls_callback {int count; struct web_client* w; } ;
struct TYPE_8__ {int machine_name; int usages; int last_t; TYPE_3__* url; TYPE_2__* machine; } ;
struct TYPE_7__ {int url; } ;
struct TYPE_6__ {int guid; } ;
typedef TYPE_4__ REGISTRY_PERSON_URL ;


 int buffer_sprintf (int ,char*,int ,int ,int ,int ,int ) ;
 int buffer_strcat (int ,char*) ;
 int strcmp (int ,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int registry_json_person_url_callback(void *entry, void *data) {
    REGISTRY_PERSON_URL *pu = (REGISTRY_PERSON_URL *)entry;
    struct registry_json_walk_person_urls_callback *c = (struct registry_json_walk_person_urls_callback *)data;
    struct web_client *w = c->w;

    if (!strcmp(pu->url->url,"***")) return 0;

    if(unlikely(c->count++))
        buffer_strcat(w->response.data, ",");

    buffer_sprintf(w->response.data, "\n\t\t[ \"%s\", \"%s\", %u000, %u, \"%s\" ]",
            pu->machine->guid, pu->url->url, pu->last_t, pu->usages, pu->machine_name);

    return 0;
}
