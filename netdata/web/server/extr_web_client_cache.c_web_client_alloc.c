
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* header_output; void* header; void* data; } ;
struct web_client {TYPE_1__ response; } ;


 int NETDATA_WEB_RESPONSE_HEADER_SIZE ;
 int NETDATA_WEB_RESPONSE_INITIAL_SIZE ;
 void* buffer_create (int ) ;
 struct web_client* callocz (int,int) ;

__attribute__((used)) static struct web_client *web_client_alloc(void) {
    struct web_client *w = callocz(1, sizeof(struct web_client));
    w->response.data = buffer_create(NETDATA_WEB_RESPONSE_INITIAL_SIZE);
    w->response.header = buffer_create(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    w->response.header_output = buffer_create(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    return w;
}
