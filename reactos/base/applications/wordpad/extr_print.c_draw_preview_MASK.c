#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* pageEnds; int pageCapacity; } ;
struct TYPE_7__ {int bottom; } ;
struct TYPE_6__ {int cpMin; } ;
struct TYPE_8__ {TYPE_2__ rc; TYPE_1__ chrg; int /*<<< orphan*/  hdc; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ FORMATRANGE ;

/* Variables and functions */
 int /*<<< orphan*/  EM_FORMATRANGE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_4__ preview ; 

__attribute__((used)) static void FUNC7(HWND hEditorWnd, FORMATRANGE* lpFr, RECT* paper, int page)
{
    int bottom;

    if (!preview.pageEnds)
    {
        preview.pageCapacity = 32;
        preview.pageEnds = FUNC3(FUNC1(), 0,
                                    sizeof(int) * preview.pageCapacity);
        if (!preview.pageEnds) return;
    } else if (page >= preview.pageCapacity) {
        int *new_buffer;
        new_buffer = FUNC4(FUNC1(), 0, preview.pageEnds,
                                 sizeof(int) * preview.pageCapacity * 2);
        if (!new_buffer) return;
        preview.pageCapacity *= 2;
        preview.pageEnds = new_buffer;
    }

    FUNC0(lpFr->hdc, paper, FUNC2(WHITE_BRUSH));
    if (page > 1 && FUNC6(page - 1)) return;
    lpFr->chrg.cpMin = page <= 1 ? 0 : preview.pageEnds[page-2];
    bottom = lpFr->rc.bottom;
    preview.pageEnds[page-1] = FUNC5(hEditorWnd, EM_FORMATRANGE, TRUE, (LPARAM)lpFr);

    /* EM_FORMATRANGE sets fr.rc.bottom to indicate the area printed in,
     * but we want to keep the original for drawing margins */
    lpFr->rc.bottom = bottom;
    FUNC5(hEditorWnd, EM_FORMATRANGE, FALSE, 0);
}