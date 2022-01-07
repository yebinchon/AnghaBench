
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* header_output; void* header; void* data; } ;
struct web_client {scalar_t__* cookie2; scalar_t__* cookie1; int origin; TYPE_1__ response; } ;
typedef int RRDHOST ;


 int NETDATA_WEB_RESPONSE_HEADER_SIZE ;
 int NETDATA_WEB_RESPONSE_INITIAL_SIZE ;
 void* buffer_create (int ) ;
 scalar_t__ localhost ;
 scalar_t__ malloc (int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct web_client *pre_test_setup()
{
    localhost = malloc(sizeof(RRDHOST));
    struct web_client *w = (struct web_client *)malloc(sizeof(struct web_client));
    w->response.data = buffer_create(NETDATA_WEB_RESPONSE_INITIAL_SIZE);
    w->response.header = buffer_create(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    w->response.header_output = buffer_create(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    strcpy(w->origin, "*");
    w->cookie1[0] = 0;
    w->cookie2[0] = 0;
    return w;
}
