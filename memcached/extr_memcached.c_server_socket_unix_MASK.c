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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct linger {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ling ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_2__ {int /*<<< orphan*/  backlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_LINGER ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  conn_listening ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listen_conn ; 
 int /*<<< orphan*/  local_transport ; 
 scalar_t__ FUNC8 (char const*,struct stat*) ; 
 int /*<<< orphan*/  main_base ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 

__attribute__((used)) static int FUNC17(const char *path, int access_mask) {
    int sfd;
    struct linger ling = {0, 0};
    struct sockaddr_un addr;
    struct stat tstat;
    int flags =1;
    int old_umask;

    if (!path) {
        return 1;
    }

    if ((sfd = FUNC10()) == -1) {
        return 1;
    }

    /*
     * Clean up a previous socket file if we left it around
     */
    if (FUNC8(path, &tstat) == 0) {
        if (FUNC0(tstat.st_mode))
            FUNC16(path);
    }

    FUNC12(sfd, SOL_SOCKET, SO_REUSEADDR, (void *)&flags, sizeof(flags));
    FUNC12(sfd, SOL_SOCKET, SO_KEEPALIVE, (void *)&flags, sizeof(flags));
    FUNC12(sfd, SOL_SOCKET, SO_LINGER, (void *)&ling, sizeof(ling));

    /*
     * the memset call clears nonstandard fields in some implementations
     * that otherwise mess things up.
     */
    FUNC9(&addr, 0, sizeof(addr));

    addr.sun_family = AF_UNIX;
    FUNC14(addr.sun_path, path, sizeof(addr.sun_path) - 1);
    FUNC1(FUNC13(addr.sun_path, path) == 0);
    old_umask = FUNC15( ~(access_mask&0777));
    if (FUNC2(sfd, (struct sockaddr *)&addr, sizeof(addr)) == -1) {
        FUNC11("bind()");
        FUNC3(sfd);
        FUNC15(old_umask);
        return 1;
    }
    FUNC15(old_umask);
    if (FUNC7(sfd, settings.backlog) == -1) {
        FUNC11("listen()");
        FUNC3(sfd);
        return 1;
    }
    if (!(listen_conn = FUNC4(sfd, conn_listening,
                                 EV_READ | EV_PERSIST, 1,
                                 local_transport, main_base, NULL))) {
        FUNC6(stderr, "failed to create listening connection\n");
        FUNC5(EXIT_FAILURE);
    }

    return 0;
}