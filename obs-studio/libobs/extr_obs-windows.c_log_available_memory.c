
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ms ;
struct TYPE_3__ {int dwLength; int ullTotalPhys; int ullAvailPhys; } ;
typedef TYPE_1__ MEMORYSTATUSEX ;
typedef int DWORD ;


 int GlobalMemoryStatusEx (TYPE_1__*) ;
 int LOG_INFO ;
 int blog (int ,char*,int ,int ,char const*) ;

__attribute__((used)) static void log_available_memory(void)
{
 MEMORYSTATUSEX ms;
 ms.dwLength = sizeof(ms);

 GlobalMemoryStatusEx(&ms);




 const char *note = " (NOTE: 32bit programs cannot use more than 3gb)";


 blog(LOG_INFO, "Physical Memory: %luMB Total, %luMB Free%s",
      (DWORD)(ms.ullTotalPhys / 1048576),
      (DWORD)(ms.ullAvailPhys / 1048576), note);
}
