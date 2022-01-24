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
struct TYPE_2__ {void* header_output; void* header; void* data; } ;
struct web_client {scalar_t__* cookie2; scalar_t__* cookie1; int /*<<< orphan*/  origin; TYPE_1__ response; } ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_WEB_RESPONSE_HEADER_SIZE ; 
 int /*<<< orphan*/  NETDATA_WEB_RESPONSE_INITIAL_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ localhost ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct web_client *FUNC3()
{
    localhost = FUNC1(sizeof(RRDHOST));
    struct web_client *w = (struct web_client *)FUNC1(sizeof(struct web_client));
    w->response.data = FUNC0(NETDATA_WEB_RESPONSE_INITIAL_SIZE);
    w->response.header = FUNC0(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    w->response.header_output = FUNC0(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    FUNC2(w->origin, "*"); // Simulate web_client_create_on_fd()
    w->cookie1[0] = 0;      // Simulate web_client_create_on_fd()
    w->cookie2[0] = 0;      // Simulate web_client_create_on_fd()
    return w;
}