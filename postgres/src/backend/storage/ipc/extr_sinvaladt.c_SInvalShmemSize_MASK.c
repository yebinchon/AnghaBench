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
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  ProcState ;

/* Variables and functions */
 int /*<<< orphan*/  MaxBackends ; 
 int /*<<< orphan*/  SISeg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  procState ; 

Size
FUNC3(void)
{
	Size		size;

	size = FUNC2(SISeg, procState);
	size = FUNC0(size, FUNC1(sizeof(ProcState), MaxBackends));

	return size;
}