
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct http_proxy_options {TYPE_1__* custom_headers; } ;
struct TYPE_2__ {scalar_t__ name; scalar_t__ content; } ;


 int D_SHOW_PARMS ;
 int MAX_CUSTOM_HTTP_HEADER ;
 int SHOW_STR (int ) ;
 int auth_file ;
 int auth_method_string ;
 int http_version ;
 int msg (int ,char*,...) ;
 int port ;
 int server ;
 int user_agent ;

__attribute__((used)) static void
show_http_proxy_options(const struct http_proxy_options *o)
{
    int i;
    msg(D_SHOW_PARMS, "BEGIN http_proxy");
    SHOW_STR(server);
    SHOW_STR(port);
    SHOW_STR(auth_method_string);
    SHOW_STR(auth_file);
    SHOW_STR(http_version);
    SHOW_STR(user_agent);
    for (i = 0; i < MAX_CUSTOM_HTTP_HEADER && o->custom_headers[i].name; i++)
    {
        if (o->custom_headers[i].content)
        {
            msg(D_SHOW_PARMS, "  custom_header[%d] = %s: %s", i,
                o->custom_headers[i].name, o->custom_headers[i].content);
        }
        else
        {
            msg(D_SHOW_PARMS, "  custom_header[%d] = %s", i,
                o->custom_headers[i].name);
        }
    }
    msg(D_SHOW_PARMS, "END http_proxy");
}
