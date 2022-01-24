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
struct TYPE_2__ {int /*<<< orphan*/  reuse_port; int /*<<< orphan*/  listener; } ;
struct lwan {TYPE_1__ config; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; } ;
typedef  scalar_t__ sa_family_t ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (struct addrinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char**,char**) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct lwan *l)
{
    char *node, *port;
    char *listener = FUNC6(l->config.listener);
    sa_family_t family = FUNC5(listener, &node, &port);
    if (family == AF_UNSPEC)
        FUNC4("Could not parse listener: %s",
                             l->config.listener);

    struct addrinfo *addrs;
    struct addrinfo hints = {.ai_family = family,
                             .ai_socktype = SOCK_STREAM,
                             .ai_flags = AI_PASSIVE};

    int ret = FUNC3(node, port, &hints, &addrs);
    if (ret)
        FUNC4("getaddrinfo: %s", FUNC2(ret));

    int fd = FUNC0(addrs, l->config.reuse_port);
    FUNC1(addrs);
    return fd;
}