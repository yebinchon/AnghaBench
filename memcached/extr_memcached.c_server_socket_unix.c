
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct linger {int member_1; int member_0; } ;
typedef int ling ;
typedef int flags ;
typedef int addr ;
struct TYPE_2__ {int backlog; } ;


 int AF_UNIX ;
 int EV_PERSIST ;
 int EV_READ ;
 int EXIT_FAILURE ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_LINGER ;
 int SO_REUSEADDR ;
 scalar_t__ S_ISSOCK (int ) ;
 int assert (int) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int conn_listening ;
 int conn_new (int,int ,int,int,int ,int ,int *) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int listen (int,int ) ;
 int listen_conn ;
 int local_transport ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int main_base ;
 int memset (struct sockaddr_un*,int ,int) ;
 int new_socket_unix () ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,void*,int) ;
 TYPE_1__ settings ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;
 int strncpy (int ,char const*,int) ;
 int umask (int) ;
 int unlink (char const*) ;

__attribute__((used)) static int server_socket_unix(const char *path, int access_mask) {
    int sfd;
    struct linger ling = {0, 0};
    struct sockaddr_un addr;
    struct stat tstat;
    int flags =1;
    int old_umask;

    if (!path) {
        return 1;
    }

    if ((sfd = new_socket_unix()) == -1) {
        return 1;
    }




    if (lstat(path, &tstat) == 0) {
        if (S_ISSOCK(tstat.st_mode))
            unlink(path);
    }

    setsockopt(sfd, SOL_SOCKET, SO_REUSEADDR, (void *)&flags, sizeof(flags));
    setsockopt(sfd, SOL_SOCKET, SO_KEEPALIVE, (void *)&flags, sizeof(flags));
    setsockopt(sfd, SOL_SOCKET, SO_LINGER, (void *)&ling, sizeof(ling));





    memset(&addr, 0, sizeof(addr));

    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, path, sizeof(addr.sun_path) - 1);
    assert(strcmp(addr.sun_path, path) == 0);
    old_umask = umask( ~(access_mask&0777));
    if (bind(sfd, (struct sockaddr *)&addr, sizeof(addr)) == -1) {
        perror("bind()");
        close(sfd);
        umask(old_umask);
        return 1;
    }
    umask(old_umask);
    if (listen(sfd, settings.backlog) == -1) {
        perror("listen()");
        close(sfd);
        return 1;
    }
    if (!(listen_conn = conn_new(sfd, conn_listening,
                                 EV_READ | EV_PERSIST, 1,
                                 local_transport, main_base, ((void*)0)))) {
        fprintf(stderr, "failed to create listening connection\n");
        exit(EXIT_FAILURE);
    }

    return 0;
}
