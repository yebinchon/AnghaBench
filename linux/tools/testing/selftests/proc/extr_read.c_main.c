
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_type; } ;
typedef int DIR ;


 int dirfd (int *) ;
 int f (int *,int ) ;
 int fprintf (int ,char*,long) ;
 int fstatfs (int ,struct statfs*) ;
 int * opendir (char*) ;
 int stderr ;

int main(void)
{
 DIR *d;
 struct statfs sfs;

 d = opendir("/proc");
 if (!d)
  return 4;


 if (fstatfs(dirfd(d), &sfs) == -1) {
  return 1;
 }
 if (sfs.f_type != 0x9fa0) {
  fprintf(stderr, "error: unexpected f_type %lx\n", (long)sfs.f_type);
  return 2;
 }

 f(d, 0);

 return 0;
}
