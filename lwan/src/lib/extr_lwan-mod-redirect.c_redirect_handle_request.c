
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct redirect_priv {int code; int * to; } ;
struct lwan_response {struct lwan_key_value* headers; } ;
struct lwan_request {TYPE_1__* conn; } ;
struct lwan_key_value {char* key; int * value; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_2__ {int coro; } ;


 int HTTP_INTERNAL_ERROR ;
 scalar_t__ UNLIKELY (int) ;
 struct lwan_key_value* coro_malloc (int ,int) ;

__attribute__((used)) static enum lwan_http_status
redirect_handle_request(struct lwan_request *request,
                        struct lwan_response *response,
                        void *instance)
{
    struct redirect_priv *priv = instance;
    struct lwan_key_value *headers;

    headers = coro_malloc(request->conn->coro, sizeof(*headers) * 2);
    if (UNLIKELY(!headers))
        return HTTP_INTERNAL_ERROR;

    headers[0].key = "Location";
    headers[0].value = priv->to;
    headers[1].key = ((void*)0);
    headers[1].value = ((void*)0);

    response->headers = headers;

    return priv->code;
}
