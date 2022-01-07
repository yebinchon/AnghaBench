
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int read (int,unsigned long long*,int) ;
 int vmentry () ;
 int vmexit () ;

void wait_for_notify(int fd)
{
 unsigned long long v = 1;
 int r;

 vmexit();
 r = read(fd, &v, sizeof v);
 assert(r == sizeof v);
 vmentry();
}
