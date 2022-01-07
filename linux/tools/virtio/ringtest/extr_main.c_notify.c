
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int vmentry () ;
 int vmexit () ;
 int write (int,unsigned long long*,int) ;

void notify(int fd)
{
 unsigned long long v = 1;
 int r;

 vmexit();
 r = write(fd, &v, sizeof v);
 assert(r == sizeof v);
 vmentry();
}
