
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pszUrlJump2; int pszUrlJump1; int pszJump2; int pszJump1; int pszHome; int pszCaption; int pszIndex; int pszToc; int pszFile; int pszType; } ;
struct TYPE_7__ {int fsValidMembers; int cbStruct; void* pszCustomTabs; void* pszUrlJump2; void* pszUrlJump1; void* pszJump2; void* pszJump1; void* pszHome; void* pszCaption; void* pszIndex; void* pszToc; void* pszFile; void* pszType; int curNavType; int cHistory; int tabOrder; int tabpos; int fNotExpanded; int fsToolBarFlags; int paInfoTypes; int nShowState; int iNavWidth; int rcWindowPos; int dwExStyles; int dwStyles; int fsWinProperties; } ;
struct TYPE_8__ {int pszCustomTabs; TYPE_1__ stringsW; TYPE_2__ WinType; } ;
typedef TYPE_2__ HH_WINTYPEW ;
typedef TYPE_3__ HHInfo ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int FIXME (char*,int) ;
 int HHWIN_PARAM_CUR_TAB ;
 int HHWIN_PARAM_EXPANSION ;
 int HHWIN_PARAM_EXSTYLES ;
 int HHWIN_PARAM_HISTORY_COUNT ;
 int HHWIN_PARAM_INFOTYPES ;
 int HHWIN_PARAM_NAV_WIDTH ;
 int HHWIN_PARAM_PROPERTIES ;
 int HHWIN_PARAM_RECT ;
 int HHWIN_PARAM_SHOWSTATE ;
 int HHWIN_PARAM_STYLES ;
 int HHWIN_PARAM_TABORDER ;
 int HHWIN_PARAM_TABPOS ;
 int HHWIN_PARAM_TB_FLAGS ;
 void* MergeChmString (void*,int *) ;
 int memcpy (int ,int ,int) ;

void MergeChmProperties(HH_WINTYPEW *src, HHInfo *info, BOOL override)
{
    DWORD unhandled_params = src->fsValidMembers & ~(HHWIN_PARAM_PROPERTIES|HHWIN_PARAM_STYLES
                             |HHWIN_PARAM_EXSTYLES|HHWIN_PARAM_RECT|HHWIN_PARAM_NAV_WIDTH
                             |HHWIN_PARAM_SHOWSTATE|HHWIN_PARAM_INFOTYPES|HHWIN_PARAM_TB_FLAGS
                             |HHWIN_PARAM_EXPANSION|HHWIN_PARAM_TABPOS|HHWIN_PARAM_TABORDER
                             |HHWIN_PARAM_HISTORY_COUNT|HHWIN_PARAM_CUR_TAB);
    HH_WINTYPEW *dst = &info->WinType;
    DWORD merge = override ? src->fsValidMembers : src->fsValidMembers & ~dst->fsValidMembers;

    if (unhandled_params)
        FIXME("Unsupported fsValidMembers fields: 0x%x\n", unhandled_params);

    dst->fsValidMembers |= merge;
    if (dst->cbStruct == 0)
    {

        dst->cbStruct = sizeof(HH_WINTYPEW);
        merge = ~0;
    }
    if (merge & HHWIN_PARAM_PROPERTIES) dst->fsWinProperties = src->fsWinProperties;
    if (merge & HHWIN_PARAM_STYLES) dst->dwStyles = src->dwStyles;
    if (merge & HHWIN_PARAM_EXSTYLES) dst->dwExStyles = src->dwExStyles;
    if (merge & HHWIN_PARAM_RECT) dst->rcWindowPos = src->rcWindowPos;
    if (merge & HHWIN_PARAM_NAV_WIDTH) dst->iNavWidth = src->iNavWidth;
    if (merge & HHWIN_PARAM_SHOWSTATE) dst->nShowState = src->nShowState;
    if (merge & HHWIN_PARAM_INFOTYPES) dst->paInfoTypes = src->paInfoTypes;
    if (merge & HHWIN_PARAM_TB_FLAGS) dst->fsToolBarFlags = src->fsToolBarFlags;
    if (merge & HHWIN_PARAM_EXPANSION) dst->fNotExpanded = src->fNotExpanded;
    if (merge & HHWIN_PARAM_TABPOS) dst->tabpos = src->tabpos;
    if (merge & HHWIN_PARAM_TABORDER) memcpy(dst->tabOrder, src->tabOrder, sizeof(src->tabOrder));
    if (merge & HHWIN_PARAM_HISTORY_COUNT) dst->cHistory = src->cHistory;
    if (merge & HHWIN_PARAM_CUR_TAB) dst->curNavType = src->curNavType;






    dst->pszType = MergeChmString(src->pszType, &info->stringsW.pszType);
    dst->pszFile = MergeChmString(src->pszFile, &info->stringsW.pszFile);
    dst->pszToc = MergeChmString(src->pszToc, &info->stringsW.pszToc);
    dst->pszIndex = MergeChmString(src->pszIndex, &info->stringsW.pszIndex);
    dst->pszCaption = MergeChmString(src->pszCaption, &info->stringsW.pszCaption);
    dst->pszHome = MergeChmString(src->pszHome, &info->stringsW.pszHome);
    dst->pszJump1 = MergeChmString(src->pszJump1, &info->stringsW.pszJump1);
    dst->pszJump2 = MergeChmString(src->pszJump2, &info->stringsW.pszJump2);
    dst->pszUrlJump1 = MergeChmString(src->pszUrlJump1, &info->stringsW.pszUrlJump1);
    dst->pszUrlJump2 = MergeChmString(src->pszUrlJump2, &info->stringsW.pszUrlJump2);







}
