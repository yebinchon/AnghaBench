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
struct web_client {TYPE_1__ response; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_WEB_RESPONSE_HEADER_SIZE ; 
 int /*<<< orphan*/  NETDATA_WEB_RESPONSE_INITIAL_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct web_client* FUNC1 (int,int) ; 

__attribute__((used)) static struct web_client *FUNC2(void) {
    struct web_client *w = FUNC1(1, sizeof(struct web_client));
    w->response.data = FUNC0(NETDATA_WEB_RESPONSE_INITIAL_SIZE);
    w->response.header = FUNC0(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    w->response.header_output = FUNC0(NETDATA_WEB_RESPONSE_HEADER_SIZE);
    return w;
}