
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ssize_t ;
typedef int buf ;


 int assert (int) ;
 int memset (char*,int ,int) ;
 int pread (int,char*,int,int ) ;
 int xstrtoull (char*,char**) ;

__attribute__((used)) static void proc_uptime(int fd, uint64_t *uptime, uint64_t *idle)
{
 uint64_t val1, val2;
 char buf[64], *p;
 ssize_t rv;


 memset(buf, 0, sizeof(buf));
 rv = pread(fd, buf, sizeof(buf), 0);
 assert(0 <= rv && rv <= sizeof(buf));
 buf[sizeof(buf) - 1] = '\0';

 p = buf;

 val1 = xstrtoull(p, &p);
 assert(p[0] == '.');
 assert('0' <= p[1] && p[1] <= '9');
 assert('0' <= p[2] && p[2] <= '9');
 assert(p[3] == ' ');

 val2 = (p[1] - '0') * 10 + p[2] - '0';
 *uptime = val1 * 100 + val2;

 p += 4;

 val1 = xstrtoull(p, &p);
 assert(p[0] == '.');
 assert('0' <= p[1] && p[1] <= '9');
 assert('0' <= p[2] && p[2] <= '9');
 assert(p[3] == '\n');

 val2 = (p[1] - '0') * 10 + p[2] - '0';
 *idle = val1 * 100 + val2;

 assert(p + 4 == buf + rv);
}
