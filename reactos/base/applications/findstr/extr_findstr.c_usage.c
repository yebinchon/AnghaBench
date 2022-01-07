
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;
typedef int LPTSTR ;


 int CharToOem (char*,char*) ;
 int GetModuleHandle (int *) ;
 int IDS_USAGE ;
 int LoadString (int ,int ,int ,int) ;
 int printf (char*) ;

void
usage (void)
{
 TCHAR lpUsage[4096];

 LoadString( GetModuleHandle(((void*)0)), IDS_USAGE, (LPTSTR)lpUsage, 4096);
 CharToOem(lpUsage, lpUsage);
 printf( lpUsage );
}
