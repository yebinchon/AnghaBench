
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int IsWindows7SP1OrGreater () ;
 int MAKEWORD (int,int) ;
 int SEM_FAILCRITICALERRORS ;
 int SEM_NOGPFAULTERRORBOX ;
 int SetErrorMode (int) ;
 int SpinLockInit (int *) ;
 int WSAStartup (int ,int *) ;
 int _IONBF ;
 int _set_FMA3_enable (int ) ;
 int dummy_spinlock ;
 int exit (int) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;
 int write_stderr (char*,char const*,int) ;

__attribute__((used)) static void
startup_hacks(const char *progname)
{
 SpinLockInit(&dummy_spinlock);
}
