
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Color; TYPE_1__* Theme; } ;
struct TYPE_7__ {TYPE_2__ ActiveTheme; } ;
struct TYPE_5__ {int ColoursList; } ;
typedef int HWND ;
typedef TYPE_3__ GLOBALS ;


 int AppearancePage_ShowStyles (int ,int ,int ,int ) ;
 int IDC_APPEARANCE_COLORSCHEME ;

__attribute__((used)) static void
AppearancePage_ShowColorSchemes(HWND hwndDlg, GLOBALS *g)
{
    AppearancePage_ShowStyles(hwndDlg,
                              IDC_APPEARANCE_COLORSCHEME,
                              g->ActiveTheme.Theme->ColoursList,
                              g->ActiveTheme.Color);
}
