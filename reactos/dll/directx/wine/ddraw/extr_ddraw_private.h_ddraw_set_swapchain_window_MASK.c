#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ddraw {int /*<<< orphan*/ * swapchain_window; } ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 

__attribute__((used)) static inline void FUNC1(struct ddraw *ddraw, HWND window)
{
    if (window == FUNC0())
        window = NULL;
    ddraw->swapchain_window = window;
}