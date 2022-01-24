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
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
typedef  int /*<<< orphan*/  serv_buf ;
typedef  int /*<<< orphan*/  host_buf ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(int fd, const struct addrinfo *addr)
{
    if (FUNC3(fd, FUNC1()) < 0)
        FUNC5("listen");

    char host_buf[NI_MAXHOST], serv_buf[NI_MAXSERV];
    int ret = FUNC2(addr->ai_addr, addr->ai_addrlen, host_buf,
                          sizeof(host_buf), serv_buf, sizeof(serv_buf),
                          NI_NUMERICHOST | NI_NUMERICSERV);
    if (ret)
        FUNC4("getnameinfo: %s", FUNC0(ret));

    if (addr->ai_family == AF_INET6)
        FUNC6("Listening on http://[%s]:%s", host_buf, serv_buf);
    else
        FUNC6("Listening on http://%s:%s", host_buf, serv_buf);

    return FUNC7(fd);
}