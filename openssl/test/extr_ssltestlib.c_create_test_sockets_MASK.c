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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(int *cfd, int *sfd)
{
    struct sockaddr_in sin;
    const char *host = "127.0.0.1";
    int cfd_connected = 0, ret = 0;
    socklen_t slen = sizeof(sin);
    int afd = -1;

    *cfd = -1;
    *sfd = -1;

    FUNC7 ((char *) &sin, 0, sizeof(sin));
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = FUNC5(host);

    afd = FUNC9(AF_INET, SOCK_STREAM, 0);
    if (afd < 0)
        return 0;

    if (FUNC1(afd, (struct sockaddr*)&sin, sizeof(sin)) < 0)
        goto out;

    if (FUNC4(afd, (struct sockaddr*)&sin, &slen) < 0)
        goto out;

    if (FUNC6(afd, 1) < 0)
        goto out;

    *cfd = FUNC9(AF_INET, SOCK_STREAM, 0);
    if (*cfd < 0)
        goto out;

    if (FUNC8(afd) == -1)
        goto out;

    while (*sfd == -1 || !cfd_connected ) {
        *sfd = FUNC0(afd, NULL, 0);
        if (*sfd == -1 && errno != EAGAIN)
            goto out;

        if (!cfd_connected && FUNC3(*cfd, (struct sockaddr*)&sin, sizeof(sin)) < 0)
            goto out;
        else
            cfd_connected = 1;
    }

    if (FUNC8(*cfd) == -1 || FUNC8(*sfd) == -1)
        goto out;
    ret = 1;
    goto success;

out:
        if (*cfd != -1)
            FUNC2(*cfd);
        if (*sfd != -1)
            FUNC2(*sfd);
success:
        if (afd != -1)
            FUNC2(afd);
    return ret;
}