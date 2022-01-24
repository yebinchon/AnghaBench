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
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  int /*<<< orphan*/  TimeLineID ;

/* Variables and functions */
 int /*<<< orphan*/  MAXFNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wal_segment_size ; 

char *
FUNC2(TimeLineID tli, XLogSegNo segno)
{
	char	   *result = FUNC1(MAXFNAMELEN);

	FUNC0(result, tli, segno, wal_segment_size);
	return result;
}