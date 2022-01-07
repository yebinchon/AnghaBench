
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct web_client {TYPE_1__ response; } ;
struct TYPE_4__ {int cloud_base_url; int registry_to_announce; } ;
typedef int RRDHOST ;


 int REGISTRY_STATUS_OK ;
 int buffer_sprintf (int ,char*,int ,int ,char*) ;
 scalar_t__ netdata_anonymous_statistics_enabled ;
 TYPE_2__ registry ;
 int registry_json_footer (struct web_client*) ;
 int registry_json_header (int *,struct web_client*,char*,int ) ;

int registry_request_hello_json(RRDHOST *host, struct web_client *w) {
    registry_json_header(host, w, "hello", REGISTRY_STATUS_OK);

    buffer_sprintf(w->response.data,
            ",\n\t\"registry\": \"%s\",\n\t\"cloud_base_url\": \"%s\",\n\t\"anonymous_statistics\": %s",
            registry.registry_to_announce,
            registry.cloud_base_url, netdata_anonymous_statistics_enabled?"true":"false");

    registry_json_footer(w);
    return 200;
}
