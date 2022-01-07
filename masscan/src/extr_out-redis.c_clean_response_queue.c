
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct Output {int dummy; } ;
typedef int fd_set ;
typedef int buf ;
typedef scalar_t__ SOCKET ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int LOG (int ,char*) ;
 int exit (int) ;
 int parse_state_machine (struct Output*,unsigned char*,size_t) ;
 size_t recv (scalar_t__,char*,int,int ) ;
 int select (int,int *,int ,int ,struct timeval*) ;

__attribute__((used)) static int
clean_response_queue(struct Output *out, SOCKET fd)
{
    fd_set readfds;
    struct timeval tv = {0,0};
    int x;
    int nfds;
    unsigned char buf[1024];
    size_t bytes_read;

    FD_ZERO(&readfds);



    FD_SET(fd, &readfds);
    nfds = (int)fd;

    x = select(nfds, &readfds, 0, 0, &tv);
    if (x == 0)
        return 1;
    if (x < 0) {
        LOG(0, "redis:select() failed\n");
        exit(1);
    }
    if (x != 1) {
        LOG(0, "redis:select() failed\n");
        exit(1);
    }




    bytes_read = recv(fd, (char*)buf, sizeof(buf), 0);
    if (bytes_read == 0) {
        LOG(0, "redis:recv() failed\n");
        exit(1);
    }

    return parse_state_machine(out, buf, bytes_read);
}
