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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct web_client {int flags; TYPE_1__ response; } ;

/* Variables and functions */
 size_t MAX_HEADERS ; 
 int WEB_CLIENT_FLAG_WAIT_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct web_client*) ; 
 struct web_client* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct web_client*) ; 

__attribute__((used)) static void FUNC5(void **state)
{
    for (size_t i = 0; i < MAX_HEADERS; i++) {
        struct web_client *w = FUNC3();
        FUNC1(w->response.data, "/api/v1/info", true, i);
        FUNC4(w);
        FUNC0(w->flags & WEB_CLIENT_FLAG_WAIT_RECEIVE, 0);
        FUNC2(w);
    }
}