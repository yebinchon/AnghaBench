#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_length; int /*<<< orphan*/ * h_addr_list; } ;
typedef  int /*<<< orphan*/  local ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 void* INADDR_ANY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hostent* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(const char *host, int port) {
    struct sockaddr_in local;
    struct hostent *h;
    int sock;

    FUNC8(&local, 0, sizeof(local));
    local.sin_family = AF_INET;
    local.sin_port = FUNC3(port);
    if (host == 0 || *host == 0) {
        local.sin_addr.s_addr = INADDR_ANY;
    }
    else if (!FUNC5(host[0]) ||
        FUNC4(host, &local.sin_addr) == 0)
    {
        if ((h = FUNC2(host)) != 0) {
            FUNC7(&local.sin_addr, h->h_addr_list[0], h->h_length);
        }
        else {
            local.sin_addr.s_addr = INADDR_ANY;
        }
    }
    if ((sock = FUNC9(AF_INET, SOCK_STREAM, 0)) < 0) {
        return sock;
    }
    if (FUNC0(sock, (struct sockaddr *) &local, sizeof(local)) < 0 ||
        FUNC6(sock, 5) < 0)
    {
        FUNC1(sock);
        return -1;
    }
    return sock;
}