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
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr {int dummy; } ;
struct nn_bipc {int /*<<< orphan*/  usock; int /*<<< orphan*/  ep; } ;
typedef  int /*<<< orphan*/  ss ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ ECONNREFUSED ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  NN_BIPC_BACKLOG ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_bipc*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC15 (char const*) ; 

__attribute__((used)) static int FUNC16 (struct nn_bipc *self)
{
    int rc;
    struct sockaddr_storage ss;
    struct sockaddr_un *un;
    const char *addr;
#if defined NN_HAVE_UNIX_SOCKETS
    int fd;
#endif

    /*  First, create the AF_UNIX address. */
    addr = FUNC7 (self->ep);
    FUNC4 (&ss, 0, sizeof (ss));
    un = (struct sockaddr_un*) &ss;
    FUNC5 (FUNC13 (addr) < sizeof (un->sun_path));
    ss.ss_family = AF_UNIX;
    FUNC14 (un->sun_path, addr, sizeof (un->sun_path));

    /*  Delete the IPC file left over by eventual previous runs of
        the application. We'll check whether the file is still in use by
        connecting to the endpoint. On Windows plaform, NamedPipe is used
        which does not have an underlying file. */
#if defined NN_HAVE_UNIX_SOCKETS
    fd = socket (AF_UNIX, SOCK_STREAM, 0);
    if (fd >= 0) {
        rc = fcntl (fd, F_SETFL, O_NONBLOCK);
        errno_assert (rc != -1 || errno == EINVAL);
        rc = connect (fd, (struct sockaddr*) &ss,
            sizeof (struct sockaddr_un));
        if (rc == -1 && errno == ECONNREFUSED) {
            rc = unlink (addr);
            errno_assert (rc == 0 || errno == ENOENT);
        }
        rc = close (fd);
        errno_assert (rc == 0);
    }
#endif

    /*  Start listening for incoming connections. */
    rc = FUNC10 (&self->usock, AF_UNIX, SOCK_STREAM, 0);
    if (rc < 0) {
        return rc;
    }

    rc = FUNC8 (&self->usock,
        (struct sockaddr*) &ss, sizeof (struct sockaddr_un));
    if (rc < 0) {
        FUNC11 (&self->usock);
        return rc;
    }

    rc = FUNC9 (&self->usock, NN_BIPC_BACKLOG);
    if (rc < 0) {
        FUNC11 (&self->usock);
        return rc;
    }
    FUNC6 (self);

    return 0;
}