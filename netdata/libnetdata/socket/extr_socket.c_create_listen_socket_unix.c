
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int name ;


 int AF_UNIX ;
 int D_LISTENER ;
 scalar_t__ ENOENT ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int chmod (char const*,int) ;
 int close (int) ;
 int debug (int ,char*,char const*) ;
 scalar_t__ errno ;
 int error (char*,char const*) ;
 scalar_t__ listen (int,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int sock_enlarge_in (int) ;
 int sock_setnonblock (int) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char const*,int) ;
 int unlink (char const*) ;

int create_listen_socket_unix(const char *path, int listen_backlog) {
    int sock;

    debug(D_LISTENER, "LISTENER: UNIX creating new listening socket on path '%s'", path);

    sock = socket(AF_UNIX, SOCK_STREAM, 0);
    if(sock < 0) {
        error("LISTENER: UNIX socket() on path '%s' failed.", path);
        return -1;
    }

    sock_setnonblock(sock);
    sock_enlarge_in(sock);

    struct sockaddr_un name;
    memset(&name, 0, sizeof(struct sockaddr_un));
    name.sun_family = AF_UNIX;
    strncpy(name.sun_path, path, sizeof(name.sun_path)-1);

    errno = 0;
    if (unlink(path) == -1 && errno != ENOENT)
        error("LISTENER: failed to remove existing (probably obsolete or left-over) file on UNIX socket path '%s'.", path);

    if(bind (sock, (struct sockaddr *) &name, sizeof (name)) < 0) {
        close(sock);
        error("LISTENER: UNIX bind() on path '%s' failed.", path);
        return -1;
    }



    if(chmod(path, 0777) == -1)
        error("LISTENER: failed to chmod() socket file '%s'.", path);

    if(listen(sock, listen_backlog) < 0) {
        close(sock);
        error("LISTENER: UNIX listen() on path '%s' failed.", path);
        return -1;
    }

    debug(D_LISTENER, "LISTENER: Listening on UNIX path '%s'", path);
    return sock;
}
