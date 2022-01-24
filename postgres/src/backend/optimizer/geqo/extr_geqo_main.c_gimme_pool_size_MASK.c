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

/* Variables and functions */
 int Geqo_effort ; 
 int Geqo_pool_size ; 
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (double,int) ; 

__attribute__((used)) static int
FUNC2(int nr_rel)
{
	double		size;
	int			minsize;
	int			maxsize;

	/* Legal pool size *must* be at least 2, so ignore attempt to select 1 */
	if (Geqo_pool_size >= 2)
		return Geqo_pool_size;

	size = FUNC1(2.0, nr_rel + 1.0);

	maxsize = 50 * Geqo_effort; /* 50 to 500 individuals */
	if (size > maxsize)
		return maxsize;

	minsize = 10 * Geqo_effort; /* 10 to 100 individuals */
	if (size < minsize)
		return minsize;

	return (int) FUNC0(size);
}