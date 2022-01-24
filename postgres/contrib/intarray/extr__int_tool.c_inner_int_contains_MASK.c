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
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 

bool
FUNC2(ArrayType *a, ArrayType *b)
{
	int			na,
				nb;
	int			i,
				j,
				n;
	int		   *da,
			   *db;

	na = FUNC0(a);
	nb = FUNC0(b);
	da = FUNC1(a);
	db = FUNC1(b);

	i = j = n = 0;
	while (i < na && j < nb)
	{
		if (da[i] < db[j])
			i++;
		else if (da[i] == db[j])
		{
			n++;
			i++;
			j++;
		}
		else
			break;				/* db[j] is not in da */
	}

	return (n == nb) ? true : false;
}