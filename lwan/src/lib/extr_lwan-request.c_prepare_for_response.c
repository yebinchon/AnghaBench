
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int password_file; int realm; } ;
struct lwan_url_map {scalar_t__ prefix_len; int flags; TYPE_1__ authorization; } ;
struct TYPE_4__ {char* value; scalar_t__ len; } ;
struct lwan_request {TYPE_2__ url; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;


 int HANDLER_HAS_POST_DATA ;
 int HANDLER_MUST_AUTHORIZE ;
 int HANDLER_PARSE_ACCEPT_ENCODING ;
 int HTTP_NOT_ALLOWED ;
 int HTTP_NOT_AUTHORIZED ;
 int HTTP_OK ;
 scalar_t__ REQUEST_METHOD_POST ;
 scalar_t__ UNLIKELY (int) ;
 int lwan_http_authorize (struct lwan_request*,int ,int ) ;
 scalar_t__ lwan_request_get_method (struct lwan_request*) ;
 int parse_accept_encoding (struct lwan_request*) ;
 int read_post_data (struct lwan_request*) ;

__attribute__((used)) static enum lwan_http_status prepare_for_response(struct lwan_url_map *url_map,
                                                  struct lwan_request *request)
{
    request->url.value += url_map->prefix_len;
    request->url.len -= url_map->prefix_len;

    if (UNLIKELY(url_map->flags & HANDLER_MUST_AUTHORIZE &&
                 !lwan_http_authorize(request, url_map->authorization.realm,
                                      url_map->authorization.password_file)))
        return HTTP_NOT_AUTHORIZED;

    while (*request->url.value == '/' && request->url.len > 0) {
        request->url.value++;
        request->url.len--;
    }

    if (url_map->flags & HANDLER_PARSE_ACCEPT_ENCODING)
        parse_accept_encoding(request);

    if (lwan_request_get_method(request) == REQUEST_METHOD_POST) {
        enum lwan_http_status status;

        if (!(url_map->flags & HANDLER_HAS_POST_DATA)) {





            return HTTP_NOT_ALLOWED;
        }

        status = read_post_data(request);
        if (UNLIKELY(status != HTTP_OK))
            return status;
    }

    return HTTP_OK;
}
