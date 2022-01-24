#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mb ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int cbSize; int /*<<< orphan*/  dwLanguageId; int /*<<< orphan*/  dwStyle; void* lpszCaption; void* lpszText; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hwndOwner; } ;
typedef  TYPE_1__ MSGBOXPARAMSW ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

int FUNC4(HWND hWnd, HINSTANCE hInstance, UINT uText, UINT uCaption, UINT uType)
{
    MSGBOXPARAMSW mb;

    FUNC3(&mb, sizeof(mb));
    mb.cbSize = sizeof(mb);
    mb.hwndOwner = hWnd;
    mb.hInstance = hInstance;
    mb.lpszText = FUNC0(uText);
    mb.lpszCaption = FUNC0(uCaption);
    mb.dwStyle = uType;
    mb.dwLanguageId = FUNC1(LANG_NEUTRAL, SUBLANG_DEFAULT);

    return FUNC2(&mb);
}