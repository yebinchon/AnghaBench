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
struct TYPE_4__ {int /*<<< orphan*/ * conn; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  header; int /*<<< orphan*/  header_output; } ;
struct web_client {TYPE_2__ ssl; struct web_client* user_agent; TYPE_1__ response; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct web_client*) ; 
 scalar_t__ netdata_srv_ctx ; 
 int /*<<< orphan*/  FUNC3 (struct web_client*) ; 

__attribute__((used)) static void FUNC4(struct web_client *w) {
    FUNC1(w->response.header_output);
    FUNC1(w->response.header);
    FUNC1(w->response.data);
    FUNC2(w->user_agent);
#ifdef ENABLE_HTTPS
    if ((!web_client_check_unix(w)) && ( netdata_srv_ctx )) {
        if (w->ssl.conn) {
            SSL_free(w->ssl.conn);
            w->ssl.conn = NULL;
        }
    }
#endif
    FUNC2(w);
}