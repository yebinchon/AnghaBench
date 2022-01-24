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

/* Variables and functions */
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wal_segment_size ; 

void
FUNC2(XLogSegNo segno)
{
	char		xlog[MAXFNAMELEN];

	FUNC1(xlog, ThisTimeLineID, segno, wal_segment_size);
	FUNC0(xlog);
}