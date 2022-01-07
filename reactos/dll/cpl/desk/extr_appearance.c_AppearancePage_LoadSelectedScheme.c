
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ ThemeActive; } ;
struct TYPE_10__ {int * crColor; } ;
struct TYPE_9__ {int desktop_color; } ;
struct TYPE_8__ {TYPE_3__ Scheme; TYPE_4__ ActiveTheme; } ;
typedef int HWND ;
typedef TYPE_1__ GLOBALS ;


 size_t COLOR_DESKTOP ;
 scalar_t__ FALSE ;
 int LoadSchemeFromReg (TYPE_3__*,TYPE_4__*) ;
 int LoadSchemeFromTheme (TYPE_3__*,TYPE_4__*) ;
 TYPE_2__ g_GlobalData ;

__attribute__((used)) static void
AppearancePage_LoadSelectedScheme(HWND hwndDlg, GLOBALS *g)
{
    if (g->ActiveTheme.ThemeActive == FALSE )
    {
        LoadSchemeFromReg(&g->Scheme, &g->ActiveTheme);
    }
    else
    {
        LoadSchemeFromTheme(&g->Scheme, &g->ActiveTheme);
    }

    g_GlobalData.desktop_color = g->Scheme.crColor[COLOR_DESKTOP];
}
