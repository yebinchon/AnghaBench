
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int release; int sysname; } ;


 int LOG_INFO ;
 int blog (int ,char*,int ,int ) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static void log_kernel_version(void)
{
 struct utsname info;
 if (uname(&info) < 0)
  return;

 blog(LOG_INFO, "Kernel Version: %s %s", info.sysname, info.release);
}
