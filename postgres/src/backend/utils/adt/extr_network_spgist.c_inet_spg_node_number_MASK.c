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
typedef  int /*<<< orphan*/  inet ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC3(const inet *val, int commonbits)
{
	int			nodeN = 0;

	if (commonbits < FUNC2(val) &&
		FUNC0(val)[commonbits / 8] & (1 << (7 - commonbits % 8)))
		nodeN |= 1;
	if (commonbits < FUNC1(val))
		nodeN |= 2;

	return nodeN;
}