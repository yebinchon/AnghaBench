#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WNDPROC ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  OrigWndProc; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_1__ IOCS ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  WM_DESTROY 131 
#define  WM_PAINT 130 
#define  WM_SHOWWINDOW 129 
#define  WM_SIZE 128 

__attribute__((used)) static LRESULT FUNC8( IOCS *This, HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam )
{
    WNDPROC OrigWndProc = This->OrigWndProc;

    switch( uMsg )
    {
        case WM_DESTROY:
            FUNC2( This );
            break;
        case WM_SIZE:
            {
                RECT r;
                FUNC7(&r, 0, 0, FUNC6(lParam), FUNC1(lParam));
                FUNC5( This, &r );
            }
            break;
        case WM_SHOWWINDOW:
            FUNC4( This, (BOOL) wParam );
            break;
        case WM_PAINT:
            FUNC3( This );
            break;
    }

    return FUNC0( OrigWndProc, hWnd, uMsg, wParam, lParam );
}