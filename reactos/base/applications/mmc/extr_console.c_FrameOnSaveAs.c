
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCONSOLE_CHILDFRM_WND ;
typedef int HWND ;
typedef int BOOL ;


 int DoSaveFileAs (int ,int *) ;
 int FALSE ;
 int * GetActiveChildInfo () ;

__attribute__((used)) static BOOL
FrameOnSaveAs(
    HWND hWnd)
{
    PCONSOLE_CHILDFRM_WND pChildInfo;

    pChildInfo = GetActiveChildInfo();
    if (pChildInfo == ((void*)0))
        return FALSE;

    return DoSaveFileAs(hWnd, pChildInfo);
}
