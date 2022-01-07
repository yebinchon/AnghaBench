
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT_PTR ;
typedef int UINT ;
struct TYPE_3__ {int hTitleIcon; int * pszTitle; int hwndSelf; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef scalar_t__ LPCWSTR ;
typedef int LPCSTR ;
typedef int HICON ;
typedef scalar_t__ BOOL ;


 void* Alloc (int) ;
 int CP_ACP ;
 int CopyIcon (int ) ;
 int FALSE ;
 int Free (int *) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 size_t TTI_ERROR ;
 int debugstr_w (scalar_t__) ;
 int * hTooltipIcons ;
 int memcpy (int *,scalar_t__,int) ;
 int strlenW (scalar_t__) ;

__attribute__((used)) static LRESULT
TOOLTIPS_SetTitleT (TOOLTIPS_INFO *infoPtr, UINT_PTR uTitleIcon, LPCWSTR pszTitle,
                    BOOL isW)
{
    UINT size;

    TRACE("hwnd = %p, title = %s, icon = %p\n", infoPtr->hwndSelf, debugstr_w(pszTitle),
        (void*)uTitleIcon);

    Free(infoPtr->pszTitle);

    if (pszTitle)
    {
        if (isW)
        {
            size = (strlenW(pszTitle)+1)*sizeof(WCHAR);
            infoPtr->pszTitle = Alloc(size);
            if (!infoPtr->pszTitle)
                return FALSE;
            memcpy(infoPtr->pszTitle, pszTitle, size);
        }
        else
        {
            size = sizeof(WCHAR)*MultiByteToWideChar(CP_ACP, 0, (LPCSTR)pszTitle, -1, ((void*)0), 0);
            infoPtr->pszTitle = Alloc(size);
            if (!infoPtr->pszTitle)
                return FALSE;
            MultiByteToWideChar(CP_ACP, 0, (LPCSTR)pszTitle, -1, infoPtr->pszTitle, size/sizeof(WCHAR));
        }
    }
    else
        infoPtr->pszTitle = ((void*)0);

    if (uTitleIcon <= TTI_ERROR)
        infoPtr->hTitleIcon = hTooltipIcons[uTitleIcon];
    else
        infoPtr->hTitleIcon = CopyIcon((HICON)uTitleIcon);

    TRACE("icon = %p\n", infoPtr->hTitleIcon);

    return TRUE;
}
