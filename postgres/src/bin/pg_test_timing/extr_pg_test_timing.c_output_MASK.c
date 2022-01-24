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
typedef  double uint64 ;
typedef  size_t int64 ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 char* FUNC1 (char*) ; 
 scalar_t__* histogram ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(uint64 loop_count)
{
	int64		max_bit = 31,
				i;
	char	   *header1 = FUNC1("< us");
	char	   *header2 = /* xgettext:no-c-format */ FUNC1("% of total");
	char	   *header3 = FUNC1("count");
	int			len1 = FUNC3(header1);
	int			len2 = FUNC3(header2);
	int			len3 = FUNC3(header3);

	/* find highest bit value */
	while (max_bit > 0 && histogram[max_bit] == 0)
		max_bit--;

	FUNC2(FUNC1("Histogram of timing durations:\n"));
	FUNC2("%*s   %*s %*s\n",
		   FUNC0(6, len1), header1,
		   FUNC0(10, len2), header2,
		   FUNC0(10, len3), header3);

	for (i = 0; i <= max_bit; i++)
		FUNC2("%*ld    %*.5f %*lld\n",
			   FUNC0(6, len1), 1l << i,
			   FUNC0(10, len2) - 1, (double) histogram[i] * 100 / loop_count,
			   FUNC0(10, len3), histogram[i]);
}