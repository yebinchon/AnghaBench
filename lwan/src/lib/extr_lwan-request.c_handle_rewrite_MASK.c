#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lwan_request_parser_helper {int urls_rewritten; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ value; } ;
struct lwan_request {TYPE_1__ url; int /*<<< orphan*/  flags; struct lwan_request_parser_helper* helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_INTERNAL_ERROR ; 
 int /*<<< orphan*/  RESPONSE_URL_REWRITTEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_request*,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct lwan_request *request)
{
    struct lwan_request_parser_helper *helper = request->helper;

    request->flags &= ~RESPONSE_URL_REWRITTEN;

    FUNC2(request, request->url.value + request->url.len);

    helper->urls_rewritten++;
    if (FUNC0(helper->urls_rewritten > 4)) {
        FUNC1(request, HTTP_INTERNAL_ERROR);
        return false;
    }

    return true;
}