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
typedef  int /*<<< orphan*/  SortSupport ;
typedef  scalar_t__ Pointer ;
typedef  scalar_t__ Numeric ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(Datum x, Datum y, SortSupport ssup)
{
	Numeric		nx = FUNC0(x);
	Numeric		ny = FUNC0(y);
	int			result;

	result = FUNC2(nx, ny);

	if ((Pointer) nx != FUNC1(x))
		FUNC3(nx);
	if ((Pointer) ny != FUNC1(y))
		FUNC3(ny);

	return result;
}