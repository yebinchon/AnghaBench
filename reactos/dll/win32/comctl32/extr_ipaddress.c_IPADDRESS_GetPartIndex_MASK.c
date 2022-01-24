#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {scalar_t__ EditHwnd; } ;
typedef  TYPE_2__ IPADDRESS_INFO ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(const IPADDRESS_INFO *infoPtr, HWND hwnd)
{
    int i;

    FUNC1("(hwnd=%p)\n", hwnd);

    for (i = 0; i < 4; i++)
        if (infoPtr->Part[i].EditHwnd == hwnd) return i;

    FUNC0("We subclassed the wrong window! (hwnd=%p)\n", hwnd);
    return -1;
}