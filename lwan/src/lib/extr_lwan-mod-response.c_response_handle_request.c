
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_response {int dummy; } ;
struct lwan_request {int dummy; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;



__attribute__((used)) static enum lwan_http_status
response_handle_request(struct lwan_request *request __attribute__((unused)),
                        struct lwan_response *response __attribute__((unused)),
                        void *instance)
{
    return (enum lwan_http_status)instance;
}
