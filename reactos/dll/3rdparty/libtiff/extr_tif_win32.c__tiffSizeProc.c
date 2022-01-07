
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
typedef int thandle_t ;
struct TYPE_2__ {int QuadPart; int HighPart; int LowPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;


 int GetFileSize (int ,int *) ;

__attribute__((used)) static uint64
_tiffSizeProc(thandle_t fd)
{
 ULARGE_INTEGER m;
 m.LowPart=GetFileSize(fd,&m.HighPart);
 return(m.QuadPart);
}
