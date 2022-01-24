#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mime_type; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
struct lwan_request {int flags; TYPE_5__ response; TYPE_4__ original_url; TYPE_3__* conn; } ;
typedef  enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_8__ {TYPE_2__* thread; } ;
struct TYPE_6__ {int /*<<< orphan*/  date; } ;
struct TYPE_7__ {TYPE_1__ date; } ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int REQUEST_IS_HTTP_1_0 ; 
 int /*<<< orphan*/  FUNC0 (struct lwan_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_request*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct lwan_request *request,
                        enum lwan_http_status status)
{
    char ip_buffer[INET6_ADDRSTRLEN];

    FUNC2("%s [%s] \"%s %s HTTP/%s\" %d %s",
                      FUNC1(request, ip_buffer),
                      request->conn->thread->date.date,
                      FUNC0(request), request->original_url.value,
                      request->flags & REQUEST_IS_HTTP_1_0 ? "1.0" : "1.1",
                      status, request->response.mime_type);
}