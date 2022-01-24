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
typedef  int /*<<< orphan*/  TimestampTz ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fsync_interval ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  outfile ; 
 int /*<<< orphan*/  output_fsync_lsn ; 
 int /*<<< orphan*/  output_isfile ; 
 int /*<<< orphan*/  output_last_fsync ; 
 int output_needs_fsync ; 
 int /*<<< orphan*/  output_written_lsn ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(TimestampTz now)
{
	output_last_fsync = now;

	output_fsync_lsn = output_written_lsn;

	if (fsync_interval <= 0)
		return true;

	if (!output_needs_fsync)
		return true;

	output_needs_fsync = false;

	/* can only fsync if it's a regular file */
	if (!output_isfile)
		return true;

	if (FUNC1(outfd) != 0)
	{
		FUNC2("could not fsync file \"%s\": %m", outfile);
		FUNC0(1);
	}

	return true;
}