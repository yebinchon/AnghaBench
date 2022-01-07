
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int Size; TYPE_2__* Color; TYPE_1__* Theme; } ;
struct TYPE_9__ {TYPE_3__ ActiveTheme; } ;
struct TYPE_7__ {scalar_t__ ChildStyle; } ;
struct TYPE_6__ {scalar_t__ SizesList; } ;
typedef scalar_t__ PTHEME_STYLE ;
typedef int HWND ;
typedef TYPE_4__ GLOBALS ;


 int AppearancePage_ShowStyles (int ,int ,scalar_t__,int ) ;
 int IDC_APPEARANCE_SIZE ;

__attribute__((used)) static void
AppearancePage_ShowSizes(HWND hwndDlg, GLOBALS *g)
{
    PTHEME_STYLE pSizes;

    if (g->ActiveTheme.Theme->SizesList)
        pSizes = g->ActiveTheme.Theme->SizesList;
    else
        pSizes = g->ActiveTheme.Color->ChildStyle;

    AppearancePage_ShowStyles(hwndDlg,
                              IDC_APPEARANCE_SIZE,
                              pSizes,
                              g->ActiveTheme.Size);
}
