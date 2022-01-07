
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zc ;
struct timeval {int tv_sec; unsigned long tv_usec; } ;
struct tcp_zerocopy_receive {int length; int recv_skip_hint; scalar_t__ address; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
struct rusage {int ru_nvcsw; TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
struct pollfd {int fd; int events; } ;
typedef int socklen_t ;
typedef scalar_t__ __u64 ;


 int F_SETFL ;
 int IPPROTO_TCP ;
 int MAP_SHARED ;
 int O_NDELAY ;
 int POLLIN ;
 int PROT_READ ;
 int RUSAGE_THREAD ;
 int TCP_ZEROCOPY_RECEIVE ;
 int assert (int) ;
 int chunk_size ;
 int close (int) ;
 int fcntl (int,int ,int ) ;
 int free (char*) ;
 int getrusage (int ,struct rusage*) ;
 int getsockopt (int,int ,int ,struct tcp_zerocopy_receive*,int*) ;
 int gettimeofday (struct timeval*,int *) ;
 int hash_zone (char*,int) ;
 char* malloc (int) ;
 void* mmap (int *,int,int ,int,int,int ) ;
 int munmap (void*,int) ;
 int perror (char*) ;
 int poll (struct pollfd*,int,int) ;
 int printf (char*,unsigned long,double,double,double,double,double,double,int ) ;
 int pthread_exit (int ) ;
 int read (int,char*,int) ;
 scalar_t__ xflg ;
 scalar_t__ zflg ;

void *child_thread(void *arg)
{
 unsigned long total_mmap = 0, total = 0;
 struct tcp_zerocopy_receive zc;
 unsigned long delta_usec;
 int flags = MAP_SHARED;
 struct timeval t0, t1;
 char *buffer = ((void*)0);
 void *addr = ((void*)0);
 double throughput;
 struct rusage ru;
 int lu, fd;

 fd = (int)(unsigned long)arg;

 gettimeofday(&t0, ((void*)0));

 fcntl(fd, F_SETFL, O_NDELAY);
 buffer = malloc(chunk_size);
 if (!buffer) {
  perror("malloc");
  goto error;
 }
 if (zflg) {
  addr = mmap(((void*)0), chunk_size, PROT_READ, flags, fd, 0);
  if (addr == (void *)-1)
   zflg = 0;
 }
 while (1) {
  struct pollfd pfd = { .fd = fd, .events = POLLIN, };
  int sub;

  poll(&pfd, 1, 10000);
  if (zflg) {
   socklen_t zc_len = sizeof(zc);
   int res;

   zc.address = (__u64)addr;
   zc.length = chunk_size;
   zc.recv_skip_hint = 0;
   res = getsockopt(fd, IPPROTO_TCP, TCP_ZEROCOPY_RECEIVE,
      &zc, &zc_len);
   if (res == -1)
    break;

   if (zc.length) {
    assert(zc.length <= chunk_size);
    total_mmap += zc.length;
    if (xflg)
     hash_zone(addr, zc.length);
    total += zc.length;
   }
   if (zc.recv_skip_hint) {
    assert(zc.recv_skip_hint <= chunk_size);
    lu = read(fd, buffer, zc.recv_skip_hint);
    if (lu > 0) {
     if (xflg)
      hash_zone(buffer, lu);
     total += lu;
    }
   }
   continue;
  }
  sub = 0;
  while (sub < chunk_size) {
   lu = read(fd, buffer + sub, chunk_size - sub);
   if (lu == 0)
    goto end;
   if (lu < 0)
    break;
   if (xflg)
    hash_zone(buffer + sub, lu);
   total += lu;
   sub += lu;
  }
 }
end:
 gettimeofday(&t1, ((void*)0));
 delta_usec = (t1.tv_sec - t0.tv_sec) * 1000000 + t1.tv_usec - t0.tv_usec;

 throughput = 0;
 if (delta_usec)
  throughput = total * 8.0 / (double)delta_usec / 1000.0;
 getrusage(RUSAGE_THREAD, &ru);
 if (total > 1024*1024) {
  unsigned long total_usec;
  unsigned long mb = total >> 20;
  total_usec = 1000000*ru.ru_utime.tv_sec + ru.ru_utime.tv_usec +
        1000000*ru.ru_stime.tv_sec + ru.ru_stime.tv_usec;
  printf("received %lg MB (%lg %% mmap'ed) in %lg s, %lg Gbit\n"
         "  cpu usage user:%lg sys:%lg, %lg usec per MB, %lu c-switches\n",
    total / (1024.0 * 1024.0),
    100.0*total_mmap/total,
    (double)delta_usec / 1000000.0,
    throughput,
    (double)ru.ru_utime.tv_sec + (double)ru.ru_utime.tv_usec / 1000000.0,
    (double)ru.ru_stime.tv_sec + (double)ru.ru_stime.tv_usec / 1000000.0,
    (double)total_usec/mb,
    ru.ru_nvcsw);
 }
error:
 free(buffer);
 close(fd);
 if (zflg)
  munmap(addr, chunk_size);
 pthread_exit(0);
}
