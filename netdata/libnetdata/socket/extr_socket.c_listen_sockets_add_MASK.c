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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {size_t opened; int* fds; int* fds_types; int* fds_families; int* fds_acl_flags; int /*<<< orphan*/ * fds_names; } ;
typedef  TYPE_1__ LISTEN_SOCKETS ;

/* Variables and functions */
 size_t MAX_LISTEN_FDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(LISTEN_SOCKETS *sockets, int fd, int family, int socktype, const char *protocol, const char *ip, uint16_t port, int acl_flags) {
    if(sockets->opened >= MAX_LISTEN_FDS) {
        FUNC1("LISTENER: Too many listening sockets. Failed to add listening %s socket at ip '%s' port %d, protocol %s, socktype %d", protocol, ip, port, protocol, socktype);
        FUNC0(fd);
        return -1;
    }

    sockets->fds[sockets->opened] = fd;
    sockets->fds_types[sockets->opened] = socktype;
    sockets->fds_families[sockets->opened] = family;
    sockets->fds_names[sockets->opened] = FUNC2(family, protocol, ip, port);
    sockets->fds_acl_flags[sockets->opened] = acl_flags;

    sockets->opened++;
    return 0;
}