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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void FUNC1(FILE* stream, int lev)
{
    static const int v_colors[] = {9, 1, 3, -1, -1, 2, 8, 8, 8, -1};
    FUNC0(stream, v_colors[lev]);
}