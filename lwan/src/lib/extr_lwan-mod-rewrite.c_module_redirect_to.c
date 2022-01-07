
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct lwan_key_value* headers; } ;
struct lwan_request {TYPE_1__ response; TYPE_2__* conn; } ;
struct lwan_key_value {char* key; int * value; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_4__ {int coro; } ;


 int HTTP_INTERNAL_ERROR ;
 int HTTP_MOVED_PERMANENTLY ;
 scalar_t__ UNLIKELY (int) ;
 struct lwan_key_value* coro_malloc (int ,int) ;
 int * coro_strdup (int ,char const*) ;

__attribute__((used)) static enum lwan_http_status module_redirect_to(struct lwan_request *request,
                                                const char *url)
{
    struct lwan_key_value *headers =
        coro_malloc(request->conn->coro, sizeof(*headers) * 2);

    if (UNLIKELY(!headers))
        return HTTP_INTERNAL_ERROR;

    headers[0].key = "Location";
    headers[0].value = coro_strdup(request->conn->coro, url);
    if (UNLIKELY(!headers[0].value))
        return HTTP_INTERNAL_ERROR;

    headers[1].key = ((void*)0);
    headers[1].value = ((void*)0);
    request->response.headers = headers;

    return HTTP_MOVED_PERMANENTLY;
}
