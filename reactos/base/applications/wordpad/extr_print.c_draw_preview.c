
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int* pageEnds; int pageCapacity; } ;
struct TYPE_7__ {int bottom; } ;
struct TYPE_6__ {int cpMin; } ;
struct TYPE_8__ {TYPE_2__ rc; TYPE_1__ chrg; int hdc; } ;
typedef int RECT ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_3__ FORMATRANGE ;


 int EM_FORMATRANGE ;
 int FALSE ;
 int FillRect (int ,int *,int ) ;
 int GetProcessHeap () ;
 int GetStockObject (int ) ;
 int* HeapAlloc (int ,int ,int) ;
 int* HeapReAlloc (int ,int ,int*,int) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WHITE_BRUSH ;
 scalar_t__ is_last_preview_page (int) ;
 TYPE_4__ preview ;

__attribute__((used)) static void draw_preview(HWND hEditorWnd, FORMATRANGE* lpFr, RECT* paper, int page)
{
    int bottom;

    if (!preview.pageEnds)
    {
        preview.pageCapacity = 32;
        preview.pageEnds = HeapAlloc(GetProcessHeap(), 0,
                                    sizeof(int) * preview.pageCapacity);
        if (!preview.pageEnds) return;
    } else if (page >= preview.pageCapacity) {
        int *new_buffer;
        new_buffer = HeapReAlloc(GetProcessHeap(), 0, preview.pageEnds,
                                 sizeof(int) * preview.pageCapacity * 2);
        if (!new_buffer) return;
        preview.pageCapacity *= 2;
        preview.pageEnds = new_buffer;
    }

    FillRect(lpFr->hdc, paper, GetStockObject(WHITE_BRUSH));
    if (page > 1 && is_last_preview_page(page - 1)) return;
    lpFr->chrg.cpMin = page <= 1 ? 0 : preview.pageEnds[page-2];
    bottom = lpFr->rc.bottom;
    preview.pageEnds[page-1] = SendMessageW(hEditorWnd, EM_FORMATRANGE, TRUE, (LPARAM)lpFr);



    lpFr->rc.bottom = bottom;
    SendMessageW(hEditorWnd, EM_FORMATRANGE, FALSE, 0);
}
