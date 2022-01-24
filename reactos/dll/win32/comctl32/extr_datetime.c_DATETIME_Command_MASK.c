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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_4__ {scalar_t__ hwndCheckbut; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  scalar_t__ HWND ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static LRESULT
FUNC2 (DATETIME_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    FUNC1("hwndbutton = %p\n", infoPtr->hwndCheckbut);
    if(infoPtr->hwndCheckbut == (HWND)lParam)
        return FUNC0(infoPtr, wParam, lParam);
    return 0;
}