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
typedef  int /*<<< orphan*/  IndexTupleData ;
typedef  int /*<<< orphan*/  IndexTuple ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC2 (int) ; 

IndexTupleData *
FUNC3(IndexTuple *vec, int veclen, int *memlen)
{
	char	   *ptr,
			   *ret;
	int			i;

	*memlen = 0;

	for (i = 0; i < veclen; i++)
		*memlen += FUNC0(vec[i]);

	ptr = ret = FUNC2(*memlen);

	for (i = 0; i < veclen; i++)
	{
		FUNC1(ptr, vec[i], FUNC0(vec[i]));
		ptr += FUNC0(vec[i]);
	}

	return (IndexTupleData *) ret;
}