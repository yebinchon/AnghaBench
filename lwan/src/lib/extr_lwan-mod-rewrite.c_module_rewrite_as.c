
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; int len; } ;
struct lwan_request {int flags; TYPE_2__ url; TYPE_2__ original_url; TYPE_1__* conn; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_3__ {int coro; } ;


 int HTTP_INTERNAL_ERROR ;
 int HTTP_OK ;
 int RESPONSE_URL_REWRITTEN ;
 scalar_t__ UNLIKELY (int) ;
 int coro_strdup (int ,char const*) ;
 int strlen (int ) ;

__attribute__((used)) static enum lwan_http_status module_rewrite_as(struct lwan_request *request,
                                               const char *url)
{
    request->url.value = coro_strdup(request->conn->coro, url);

    if (UNLIKELY(!request->url.value))
        return HTTP_INTERNAL_ERROR;

    request->url.len = strlen(request->url.value);
    request->original_url = request->url;
    request->flags |= RESPONSE_URL_REWRITTEN;

    return HTTP_OK;
}
