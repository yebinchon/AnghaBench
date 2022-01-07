
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 scalar_t__ EEXIST ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int close (int) ;
 scalar_t__ errno ;
 int getpid () ;
 int random () ;
 int shm_open (char*,int,int) ;
 int shm_unlink (char*) ;
 int snprintf (char*,int,char*,int) ;
 int srandom (unsigned int) ;
 int time (int *) ;

__attribute__((used)) static const char *
choose_dsm_implementation(void)
{
 return "sysv";

}
