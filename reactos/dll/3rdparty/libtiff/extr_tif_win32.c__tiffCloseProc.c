
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thandle_t ;


 scalar_t__ CloseHandle (int ) ;

__attribute__((used)) static int
_tiffCloseProc(thandle_t fd)
{
 return (CloseHandle(fd) ? 0 : -1);
}
