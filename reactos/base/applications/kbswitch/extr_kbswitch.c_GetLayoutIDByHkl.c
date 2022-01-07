
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int SIZE_T ;
typedef int LPTSTR ;
typedef int HKL ;


 int LOWORD (int ) ;
 int StringCchPrintf (int ,int ,int ,int ) ;
 int _T (char*) ;

VOID
GetLayoutIDByHkl(HKL hKl, LPTSTR szLayoutID, SIZE_T LayoutIDLength)
{




    StringCchPrintf(szLayoutID, LayoutIDLength, _T("%08x"), LOWORD(hKl));
}
