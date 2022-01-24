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
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ scrollbar_T ;
typedef  int /*<<< orphan*/  PtArg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Pt_ARG_GAUGE_VALUE ; 
 int /*<<< orphan*/  Pt_ARG_MAXIMUM ; 
 int /*<<< orphan*/  Pt_ARG_SLIDER_SIZE ; 

void
FUNC2(scrollbar_T *sb, int val, int size, int max)
{
    int	    n = 0;
    PtArg_t args[3];

    FUNC0(&args[ n++ ], Pt_ARG_MAXIMUM, max, 0);
    FUNC0(&args[ n++ ], Pt_ARG_SLIDER_SIZE, size, 0);
    FUNC0(&args[ n++ ], Pt_ARG_GAUGE_VALUE, val, 0);
    FUNC1(sb->id, n, args);
}