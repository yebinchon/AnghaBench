
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_response {char* mime_type; int buffer; } ;
struct lwan_request {int dummy; } ;
typedef int message ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;


 int HTTP_OK ;
 int lwan_strbuf_set_static (int ,char const*,int) ;

__attribute__((used)) static enum lwan_http_status hello_world(struct lwan_request *request
                                         __attribute__((unused)),
                                         struct lwan_response *response,
                                         void *data __attribute__((unused)))
{
    static const char message[] = "Hello, World!";

    response->mime_type = "text/plain";
    lwan_strbuf_set_static(response->buffer, message, sizeof(message) - 1);

    return HTTP_OK;
}
