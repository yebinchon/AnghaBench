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
struct TYPE_3__ {void* lpstrCustomFilter; void* lpstrFile; void* lpstrFileTitle; scalar_t__ lpTemplateName; scalar_t__ lpstrTitle; scalar_t__ lpstrInitialDir; scalar_t__ lpstrFilter; } ;
typedef  TYPE_1__ OPENFILENAMEW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(OPENFILENAMEW *ofnW)
{
    FUNC1((void *)ofnW->lpstrFilter);
    FUNC1(ofnW->lpstrCustomFilter);
    FUNC1(ofnW->lpstrFile);
    FUNC1(ofnW->lpstrFileTitle);
    FUNC1((void *)ofnW->lpstrInitialDir);
    FUNC1((void *)ofnW->lpstrTitle);
    if (!FUNC0(ofnW->lpTemplateName))
        FUNC1((void *)ofnW->lpTemplateName);
}