
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Output {int dummy; } ;
typedef scalar_t__ ptrdiff_t ;
typedef int line ;
typedef int SOCKET ;
typedef int FILE ;


 int LOG (int ,char*,...) ;
 int UNUSEDPARM (struct Output*) ;
 int exit (int) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 size_t recv_line (int ,unsigned char*,int) ;
 size_t send (int ,char*,int,int ) ;

__attribute__((used)) static void
redis_out_open(struct Output *out, FILE *fp)
{
    ptrdiff_t fd = (ptrdiff_t)fp;
    size_t count;
    unsigned char line[1024];

    UNUSEDPARM(out);

    count = send((SOCKET)fd, "PING\r\n", 6, 0);
    if (count != 6) {
        LOG(0, "redis: send(ping) failed\n");
        exit(1);
    }

    count = recv_line((SOCKET)fd, line, sizeof(line));
    if (count != 7 && memcmp(line, "+PONG\r\n", 7) != 0) {
        LOG(0, "redis: unexpected response from redis server: %s\n", line);
        exit(1);
    }
}
