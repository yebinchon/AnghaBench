
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int MaximumLength; int Length; scalar_t__ Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ PWCHAR ;
typedef int LPSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int INT ;
typedef int DWORD ;


 int FilenameU2A_FitOrFail (int ,int,TYPE_1__*) ;
 int wcslen (scalar_t__) ;

DWORD
FilenameW2A_FitOrFail(
   LPSTR DestA,
   INT destLen,
   LPCWSTR SourceW,
   INT sourceLen
   )
{
   UNICODE_STRING strW;

   if (sourceLen < 0) sourceLen = wcslen(SourceW) + 1;

   strW.Buffer = (PWCHAR)SourceW;
   strW.MaximumLength = sourceLen * sizeof(WCHAR);
   strW.Length = strW.MaximumLength - sizeof(WCHAR);

   return FilenameU2A_FitOrFail(DestA, destLen, &strW);
}
