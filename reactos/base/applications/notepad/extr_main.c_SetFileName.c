
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {scalar_t__* szFileTitle; scalar_t__* szFileName; } ;
typedef int LPCTSTR ;


 int ARRAY_SIZE (scalar_t__*) ;
 int GetFileTitle (int ,scalar_t__*,int ) ;
 TYPE_1__ Globals ;
 int StringCchCopy (scalar_t__*,int ,int ) ;

VOID SetFileName(LPCTSTR szFileName)
{
    StringCchCopy(Globals.szFileName, ARRAY_SIZE(Globals.szFileName), szFileName);
    Globals.szFileTitle[0] = 0;
    GetFileTitle(szFileName, Globals.szFileTitle, ARRAY_SIZE(Globals.szFileTitle));
}
