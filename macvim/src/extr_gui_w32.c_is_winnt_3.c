
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dwPlatformId; int dwMajorVersion; } ;


 scalar_t__ VER_PLATFORM_WIN32_NT ;
 scalar_t__ VER_PLATFORM_WIN32s ;
 TYPE_1__ os_version ;

__attribute__((used)) static int
is_winnt_3(void)
{
    return ((os_version.dwPlatformId == VER_PLATFORM_WIN32_NT
  && os_version.dwMajorVersion == 3)
     || (os_version.dwPlatformId == VER_PLATFORM_WIN32s));
}
