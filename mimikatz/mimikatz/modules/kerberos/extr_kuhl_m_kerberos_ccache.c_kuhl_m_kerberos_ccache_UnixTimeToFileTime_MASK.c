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
typedef  int /*<<< orphan*/  time_t ;
typedef  scalar_t__* PLONGLONG ;
typedef  scalar_t__ LPFILETIME ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(time_t t, LPFILETIME pft)
{
	*(PLONGLONG) pft = FUNC0(t, 10000000) + 116444736000000000;
}