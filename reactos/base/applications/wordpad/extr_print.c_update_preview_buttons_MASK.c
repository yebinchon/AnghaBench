#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int page; int pages_shown; int zoomlevel; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_REBAR ; 
 int /*<<< orphan*/  ID_PREVIEW_NEXTPAGE ; 
 int /*<<< orphan*/  ID_PREVIEW_NUMPAGES ; 
 int /*<<< orphan*/  ID_PREVIEW_PREVPAGE ; 
 int /*<<< orphan*/  ID_PREVIEW_ZOOMIN ; 
 int /*<<< orphan*/  ID_PREVIEW_ZOOMOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ preview ; 

__attribute__((used)) static void FUNC3(HWND hMainWnd)
{
    HWND hReBar = FUNC1(hMainWnd, IDC_REBAR);
    FUNC0(FUNC1(hReBar, ID_PREVIEW_PREVPAGE), preview.page > 1);
    FUNC0(FUNC1(hReBar, ID_PREVIEW_NEXTPAGE),
                 !FUNC2(preview.page) &&
                 !FUNC2(preview.page + preview.pages_shown - 1));
    FUNC0(FUNC1(hReBar, ID_PREVIEW_NUMPAGES),
                 preview.pages_shown > 1 ||
                 (!FUNC2(1) && preview.zoomlevel == 0));
    FUNC0(FUNC1(hReBar, ID_PREVIEW_ZOOMIN), preview.zoomlevel < 2);
    FUNC0(FUNC1(hReBar, ID_PREVIEW_ZOOMOUT), preview.zoomlevel > 0);
}