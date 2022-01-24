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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int wal_segment_size_mb ; 

__attribute__((used)) static char *
FUNC2(int segment_count)
{
	int			sz = wal_segment_size_mb * segment_count;
	char	   *result = FUNC0(14);

	if ((sz % 1024) == 0)
		FUNC1(result, 14, "%dGB", sz / 1024);
	else
		FUNC1(result, 14, "%dMB", sz);

	return result;
}