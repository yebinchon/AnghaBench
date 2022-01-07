
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
struct registry_json_walk_person_urls_callback {int count; TYPE_4__* m; struct web_client* w; } ;
struct TYPE_8__ {int guid; } ;
struct TYPE_7__ {int usages; int last_t; TYPE_2__* url; } ;
struct TYPE_6__ {int url; } ;
typedef TYPE_3__ REGISTRY_MACHINE_URL ;
typedef TYPE_4__ REGISTRY_MACHINE ;


 int buffer_sprintf (int ,char*,int ,int ,int ,int ) ;
 int buffer_strcat (int ,char*) ;
 int strcmp (int ,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int registry_json_machine_url_callback(void *entry, void *data) {
    REGISTRY_MACHINE_URL *mu = (REGISTRY_MACHINE_URL *)entry;
    struct registry_json_walk_person_urls_callback *c = (struct registry_json_walk_person_urls_callback *)data;
    struct web_client *w = c->w;
    REGISTRY_MACHINE *m = c->m;

    if (!strcmp(mu->url->url,"***")) return 1;

    if(unlikely(c->count++))
        buffer_strcat(w->response.data, ",");

    buffer_sprintf(w->response.data, "\n\t\t[ \"%s\", \"%s\", %u000, %u ]",
            m->guid, mu->url->url, mu->last_t, mu->usages);

    return 1;
}
