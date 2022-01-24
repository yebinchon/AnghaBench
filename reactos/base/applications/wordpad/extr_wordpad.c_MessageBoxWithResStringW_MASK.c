#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int cbSize; scalar_t__ dwLanguageId; int /*<<< orphan*/ * lpfnMsgBoxCallback; scalar_t__ dwContextHelpId; int /*<<< orphan*/ * lpszIcon; int /*<<< orphan*/  dwStyle; void* lpszCaption; void* lpszText; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hwndOwner; } ;
typedef  TYPE_1__ MSGBOXPARAMSW ;
typedef  void* LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(HWND hWnd, LPCWSTR lpText, LPCWSTR lpCaption, UINT uType)
{
    MSGBOXPARAMSW params;

    params.cbSize             = sizeof(params);
    params.hwndOwner          = hWnd;
    params.hInstance          = FUNC0(0);
    params.lpszText           = lpText;
    params.lpszCaption        = lpCaption;
    params.dwStyle            = uType;
    params.lpszIcon           = NULL;
    params.dwContextHelpId    = 0;
    params.lpfnMsgBoxCallback = NULL;
    params.dwLanguageId       = 0;
    return FUNC1(&params);
}