#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct web_client {char* origin; char* cookie1; char* cookie2; int /*<<< orphan*/ * user_agent; int /*<<< orphan*/  ifd; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct web_client*,char*) ; 

void FUNC9(struct web_client *w) {
    int flag = 1;

    if(FUNC3(FUNC5(w) && FUNC2(w->ifd, IPPROTO_TCP, TCP_NODELAY, (char *) &flag, sizeof(int)) != 0))
        FUNC0(D_WEB_CLIENT, "%llu: failed to enable TCP_NODELAY on socket fd %d.", w->id, w->ifd);

    flag = 1;
    if(FUNC3(FUNC2(w->ifd, SOL_SOCKET, SO_KEEPALIVE, (char *) &flag, sizeof(int)) != 0))
        FUNC0(D_WEB_CLIENT, "%llu: failed to enable SO_KEEPALIVE on socket fd %d.", w->id, w->ifd);

    FUNC7(w);

    w->origin[0] = '*'; w->origin[1] = '\0';
    w->cookie1[0] = '\0'; w->cookie2[0] = '\0';
    FUNC1(w->user_agent); w->user_agent = NULL;

    FUNC6(w);

    FUNC8(w, "CONNECTED");

    FUNC4(0);
}