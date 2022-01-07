
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int O_RDWR ;
 int chdir (char*) ;
 int close (int) ;
 int dup2 (int,int) ;
 int errno ;
 int exit (int ) ;
 int fork () ;
 int open (char*,int ,int ) ;
 int setsid () ;

int
daemon(int nochdir, int noclose)
{
    (void)nochdir;
    (void)noclose;
    errno = EFAULT;
    return -1;

}
