
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bottom; } ;
struct TYPE_5__ {scalar_t__ cpMin; } ;
struct TYPE_7__ {TYPE_2__ rc; TYPE_1__ chrg; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_3__ FORMATRANGE ;


 int EM_FORMATRANGE ;
 int FALSE ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static void char_from_pagenum(HWND hEditorWnd, FORMATRANGE *fr, int page)
{
    int i;

    fr->chrg.cpMin = 0;

    for(i = 1; i < page; i++)
    {
        int bottom = fr->rc.bottom;
        fr->chrg.cpMin = SendMessageW(hEditorWnd, EM_FORMATRANGE, FALSE, (LPARAM)fr);
        fr->rc.bottom = bottom;
    }
}
