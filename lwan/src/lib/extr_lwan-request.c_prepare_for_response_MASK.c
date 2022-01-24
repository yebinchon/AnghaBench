#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  password_file; int /*<<< orphan*/  realm; } ;
struct lwan_url_map {scalar_t__ prefix_len; int flags; TYPE_1__ authorization; } ;
struct TYPE_4__ {char* value; scalar_t__ len; } ;
struct lwan_request {TYPE_2__ url; } ;
typedef  enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;

/* Variables and functions */
 int HANDLER_HAS_POST_DATA ; 
 int HANDLER_MUST_AUTHORIZE ; 
 int HANDLER_PARSE_ACCEPT_ENCODING ; 
 int HTTP_NOT_ALLOWED ; 
 int HTTP_NOT_AUTHORIZED ; 
 int HTTP_OK ; 
 scalar_t__ REQUEST_METHOD_POST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct lwan_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan_request*) ; 
 int FUNC4 (struct lwan_request*) ; 

__attribute__((used)) static enum lwan_http_status FUNC5(struct lwan_url_map *url_map,
                                                  struct lwan_request *request)
{
    request->url.value += url_map->prefix_len;
    request->url.len -= url_map->prefix_len;

    if (FUNC0(url_map->flags & HANDLER_MUST_AUTHORIZE &&
                 !FUNC1(request, url_map->authorization.realm,
                                      url_map->authorization.password_file)))
        return HTTP_NOT_AUTHORIZED;

    while (*request->url.value == '/' && request->url.len > 0) {
        request->url.value++;
        request->url.len--;
    }

    if (url_map->flags & HANDLER_PARSE_ACCEPT_ENCODING)
        FUNC3(request);

    if (FUNC2(request) == REQUEST_METHOD_POST) {
        enum lwan_http_status status;

        if (!(url_map->flags & HANDLER_HAS_POST_DATA)) {
            /* FIXME: Discard POST data here? If a POST request is sent
             * to a handler that is not supposed to handle a POST request,
             * the next request in the pipeline will fail because the
             * body of the previous request will be used as the next
             * request itself. */
            return HTTP_NOT_ALLOWED;
        }

        status = FUNC4(request);
        if (FUNC0(status != HTTP_OK))
            return status;
    }

    return HTTP_OK;
}