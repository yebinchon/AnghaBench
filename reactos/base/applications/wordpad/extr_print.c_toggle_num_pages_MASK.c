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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int pages_shown; scalar_t__ zoomlevel; int saved_pages_shown; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_PREVIEW ; 
 int /*<<< orphan*/  IDC_REBAR ; 
 int /*<<< orphan*/  ID_PREVIEW_NUMPAGES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_STRING_LEN ; 
 int /*<<< orphan*/  STRING_PREVIEW_ONEPAGE ; 
 int /*<<< orphan*/  STRING_PREVIEW_TWOPAGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ preview ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(HWND hMainWnd)
{
    HWND hReBar = FUNC0(hMainWnd, IDC_REBAR);
    WCHAR name[MAX_STRING_LEN];
    HINSTANCE hInst = FUNC1(0);
    int nPreviewPages;

    preview.pages_shown = preview.pages_shown > 1 ? 1 : 2;

    nPreviewPages = preview.zoomlevel > 0 ? preview.saved_pages_shown :
                                            preview.pages_shown;

    FUNC2(hInst, nPreviewPages > 1 ? STRING_PREVIEW_ONEPAGE :
                                           STRING_PREVIEW_TWOPAGES,
                name, MAX_STRING_LEN);

    FUNC3(FUNC0(hReBar, ID_PREVIEW_NUMPAGES), name);
    FUNC5(FUNC0(hMainWnd, IDC_PREVIEW), TRUE);
    FUNC4(hMainWnd);
}