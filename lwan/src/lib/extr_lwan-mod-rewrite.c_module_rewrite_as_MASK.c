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
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  len; } ;
struct lwan_request {int /*<<< orphan*/  flags; TYPE_2__ url; TYPE_2__ original_url; TYPE_1__* conn; } ;
typedef  enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_3__ {int /*<<< orphan*/  coro; } ;

/* Variables and functions */
 int HTTP_INTERNAL_ERROR ; 
 int HTTP_OK ; 
 int /*<<< orphan*/  RESPONSE_URL_REWRITTEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum lwan_http_status FUNC3(struct lwan_request *request,
                                               const char *url)
{
    request->url.value = FUNC1(request->conn->coro, url);

    if (FUNC0(!request->url.value))
        return HTTP_INTERNAL_ERROR;

    request->url.len = FUNC2(request->url.value);
    request->original_url = request->url;
    request->flags |= RESPONSE_URL_REWRITTEN;

    return HTTP_OK;
}