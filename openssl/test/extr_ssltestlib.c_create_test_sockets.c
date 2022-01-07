
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sin ;


 int AF_INET ;
 scalar_t__ EAGAIN ;
 int SOCK_STREAM ;
 int accept (int,int *,int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int inet_addr (char const*) ;
 scalar_t__ listen (int,int) ;
 int memset (char*,int ,int) ;
 int set_nb (int) ;
 int socket (int ,int ,int ) ;

int create_test_sockets(int *cfd, int *sfd)
{
    struct sockaddr_in sin;
    const char *host = "127.0.0.1";
    int cfd_connected = 0, ret = 0;
    socklen_t slen = sizeof(sin);
    int afd = -1;

    *cfd = -1;
    *sfd = -1;

    memset ((char *) &sin, 0, sizeof(sin));
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = inet_addr(host);

    afd = socket(AF_INET, SOCK_STREAM, 0);
    if (afd < 0)
        return 0;

    if (bind(afd, (struct sockaddr*)&sin, sizeof(sin)) < 0)
        goto out;

    if (getsockname(afd, (struct sockaddr*)&sin, &slen) < 0)
        goto out;

    if (listen(afd, 1) < 0)
        goto out;

    *cfd = socket(AF_INET, SOCK_STREAM, 0);
    if (*cfd < 0)
        goto out;

    if (set_nb(afd) == -1)
        goto out;

    while (*sfd == -1 || !cfd_connected ) {
        *sfd = accept(afd, ((void*)0), 0);
        if (*sfd == -1 && errno != EAGAIN)
            goto out;

        if (!cfd_connected && connect(*cfd, (struct sockaddr*)&sin, sizeof(sin)) < 0)
            goto out;
        else
            cfd_connected = 1;
    }

    if (set_nb(*cfd) == -1 || set_nb(*sfd) == -1)
        goto out;
    ret = 1;
    goto success;

out:
        if (*cfd != -1)
            close(*cfd);
        if (*sfd != -1)
            close(*sfd);
success:
        if (afd != -1)
            close(afd);
    return ret;
}
