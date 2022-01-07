
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_UNIX ;
 int D_CONNECT_TO ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_SNDTIMEO ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int debug (int ,char*,char const*) ;
 int error (char*,char const*) ;
 int memset (struct sockaddr_un*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static inline int connect_to_unix(const char *path, struct timeval *timeout) {
    int fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if(fd == -1) {
        error("Failed to create UNIX socket() for '%s'", path);
        return -1;
    }

    if(timeout) {
        if(setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, (char *) timeout, sizeof(struct timeval)) < 0)
            error("Failed to set timeout on UNIX socket '%s'", path);
    }

    struct sockaddr_un addr;
    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, path, sizeof(addr.sun_path)-1);

    if (connect(fd, (struct sockaddr*)&addr, sizeof(addr)) == -1) {
        error("Cannot connect to UNIX socket on path '%s'.", path);
        close(fd);
        return -1;
    }

    debug(D_CONNECT_TO, "Connected to UNIX socket on path '%s'.", path);

    return fd;
}
