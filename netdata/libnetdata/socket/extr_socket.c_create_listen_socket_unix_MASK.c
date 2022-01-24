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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  D_LISTENER ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC11 (char const*) ; 

int FUNC12(const char *path, int listen_backlog) {
    int sock;

    FUNC3(D_LISTENER, "LISTENER: UNIX creating new listening socket on path '%s'", path);

    sock = FUNC9(AF_UNIX, SOCK_STREAM, 0);
    if(sock < 0) {
        FUNC4("LISTENER: UNIX socket() on path '%s' failed.", path);
        return -1;
    }

    FUNC8(sock);
    FUNC7(sock);

    struct sockaddr_un name;
    FUNC6(&name, 0, sizeof(struct sockaddr_un));
    name.sun_family = AF_UNIX;
    FUNC10(name.sun_path, path, sizeof(name.sun_path)-1);

    errno = 0;
    if (FUNC11(path) == -1 && errno != ENOENT)
        FUNC4("LISTENER: failed to remove existing (probably obsolete or left-over) file on UNIX socket path '%s'.", path);

    if(FUNC0 (sock, (struct sockaddr *) &name, sizeof (name)) < 0) {
        FUNC2(sock);
        FUNC4("LISTENER: UNIX bind() on path '%s' failed.", path);
        return -1;
    }

    // we have to chmod this to 0777 so that the client will be able
    // to read from and write to this socket.
    if(FUNC1(path, 0777) == -1)
        FUNC4("LISTENER: failed to chmod() socket file '%s'.", path);

    if(FUNC5(sock, listen_backlog) < 0) {
        FUNC2(sock);
        FUNC4("LISTENER: UNIX listen() on path '%s' failed.", path);
        return -1;
    }

    FUNC3(D_LISTENER, "LISTENER: Listening on UNIX path '%s'", path);
    return sock;
}