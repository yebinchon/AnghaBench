
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int mask; int pszText; } ;
struct TYPE_7__ {int * pszText; } ;
typedef int * LPWSTR ;
typedef int INT ;
typedef int COMBOEX_INFO ;
typedef TYPE_1__ COMBOBOXEXITEMW ;
typedef TYPE_2__ COMBOBOXEXITEMA ;


 int * Alloc (int) ;
 int CBEIF_TEXT ;
 int COMBOEX_InsertItemW (int *,TYPE_1__*) ;
 int CP_ACP ;
 int Free (int *) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 scalar_t__ is_textA (int ) ;
 int memcpy (TYPE_1__*,TYPE_2__ const*,int) ;

__attribute__((used)) static INT COMBOEX_InsertItemA (COMBOEX_INFO *infoPtr, COMBOBOXEXITEMA const *cit)
{
    COMBOBOXEXITEMW citW;
    LPWSTR wstr = ((void*)0);
    INT ret;

    memcpy(&citW,cit,sizeof(COMBOBOXEXITEMA));
    if (cit->mask & CBEIF_TEXT && is_textA(cit->pszText)) {
 INT len = MultiByteToWideChar (CP_ACP, 0, cit->pszText, -1, ((void*)0), 0);
        wstr = Alloc ((len + 1)*sizeof(WCHAR));
 if (!wstr) return -1;
 MultiByteToWideChar (CP_ACP, 0, cit->pszText, -1, wstr, len);
 citW.pszText = wstr;
    }
    ret = COMBOEX_InsertItemW(infoPtr, &citW);

    Free(wstr);

    return ret;
}
