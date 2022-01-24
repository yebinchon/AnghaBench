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
struct TYPE_2__ {int /*<<< orphan*/  starting; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_nogvim ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3()
{
#ifdef FEAT_GUI
    gui.starting = TRUE;	/* start GUI a bit later */
#else
    FUNC1(FUNC0(e_nogvim));
    FUNC1("\n");
    FUNC2(2);
#endif
}