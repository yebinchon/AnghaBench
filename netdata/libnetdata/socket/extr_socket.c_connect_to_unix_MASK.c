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
struct timeval {int dummy; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  D_CONNECT_TO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static inline int FUNC8(const char *path, struct timeval *timeout) {
    int fd = FUNC6(AF_UNIX, SOCK_STREAM, 0);
    if(fd == -1) {
        FUNC3("Failed to create UNIX socket() for '%s'", path);
        return -1;
    }

    if(timeout) {
        if(FUNC5(fd, SOL_SOCKET, SO_SNDTIMEO, (char *) timeout, sizeof(struct timeval)) < 0)
            FUNC3("Failed to set timeout on UNIX socket '%s'", path);
    }

    struct sockaddr_un addr;
    FUNC4(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    FUNC7(addr.sun_path, path, sizeof(addr.sun_path)-1);

    if (FUNC1(fd, (struct sockaddr*)&addr, sizeof(addr)) == -1) {
        FUNC3("Cannot connect to UNIX socket on path '%s'.", path);
        FUNC0(fd);
        return -1;
    }

    FUNC2(D_CONNECT_TO, "Connected to UNIX socket on path '%s'.", path);

    return fd;
}