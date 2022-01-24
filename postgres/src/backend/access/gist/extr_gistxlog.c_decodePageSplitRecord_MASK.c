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
typedef  scalar_t__ IndexTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int*,char*,int) ; 
 scalar_t__* FUNC3 (int) ; 

__attribute__((used)) static IndexTuple *
FUNC4(char *begin, int len, int *n)
{
	char	   *ptr;
	int			i = 0;
	IndexTuple *tuples;

	/* extract the number of tuples */
	FUNC2(n, begin, sizeof(int));
	ptr = begin + sizeof(int);

	tuples = FUNC3(*n * sizeof(IndexTuple));

	for (i = 0; i < *n; i++)
	{
		FUNC0(ptr - begin < len);
		tuples[i] = (IndexTuple) ptr;
		ptr += FUNC1((IndexTuple) ptr);
	}
	FUNC0(ptr - begin == len);

	return tuples;
}