
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pFileName; } ;
typedef TYPE_1__* PCONSOLE_CHILDFRM_WND ;
typedef int HWND ;
typedef int BOOL ;


 int DPRINT1 (char*,TYPE_1__*) ;
 int DoSaveFileAs (int ,TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static BOOL
DoSaveFile(
    HWND hWnd,
    PCONSOLE_CHILDFRM_WND pChildInfo)
{
    DPRINT1("pChildInfo %p\n", pChildInfo);

    DPRINT1("FileName %S\n", pChildInfo->pFileName);

    if (pChildInfo->pFileName == ((void*)0))
        return DoSaveFileAs(hWnd, pChildInfo);



    return TRUE;
}
