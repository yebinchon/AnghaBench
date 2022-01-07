
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_4__ {int registry_to_announce; } ;
typedef int RRDHOST ;


 int REGISTRY_STATUS_DISABLED ;
 int buffer_sprintf (int ,char*,int ) ;
 TYPE_2__ registry ;
 int registry_json_footer (struct web_client*) ;
 int registry_json_header (int *,struct web_client*,char const*,int ) ;

__attribute__((used)) static inline int registry_json_disabled(RRDHOST *host, struct web_client *w, const char *action) {
    registry_json_header(host, w, action, REGISTRY_STATUS_DISABLED);

    buffer_sprintf(w->response.data, ",\n\t\"registry\": \"%s\"",
            registry.registry_to_announce);

    registry_json_footer(w);
    return 200;
}
