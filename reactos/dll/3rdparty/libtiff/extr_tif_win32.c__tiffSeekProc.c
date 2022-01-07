
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int thandle_t ;
struct TYPE_2__ {scalar_t__ LowPart; scalar_t__ QuadPart; int HighPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int DWORD ;


 int FILE_BEGIN ;
 int FILE_CURRENT ;
 int FILE_END ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_SET_FILE_POINTER ;
 scalar_t__ NO_ERROR ;



 scalar_t__ SetFilePointer (int ,scalar_t__,int *,int ) ;

__attribute__((used)) static uint64
_tiffSeekProc(thandle_t fd, uint64 off, int whence)
{
 LARGE_INTEGER offli;
 DWORD dwMoveMethod;
 offli.QuadPart = off;
 switch(whence)
 {
  case 128:
   dwMoveMethod = FILE_BEGIN;
   break;
  case 130:
   dwMoveMethod = FILE_CURRENT;
   break;
  case 129:
   dwMoveMethod = FILE_END;
   break;
  default:
   dwMoveMethod = FILE_BEGIN;
   break;
 }
 offli.LowPart=SetFilePointer(fd,offli.LowPart,&offli.HighPart,dwMoveMethod);
 if ((offli.LowPart==INVALID_SET_FILE_POINTER)&&(GetLastError()!=NO_ERROR))
  offli.QuadPart=0;
 return(offli.QuadPart);
}
