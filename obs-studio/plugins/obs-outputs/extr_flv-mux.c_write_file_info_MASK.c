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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FLV_INFO_SIZE_OFFSET ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 

void FUNC3(FILE *file, int64_t duration_ms, int64_t size)
{
	char buf[64];
	char *enc = buf;
	char *end = enc + sizeof(buf);

	FUNC1(file, FLV_INFO_SIZE_OFFSET, SEEK_SET);

	FUNC0(&enc, end, "duration", (double)duration_ms / 1000.0);
	FUNC0(&enc, end, "fileSize", (double)size);

	FUNC2(buf, 1, enc - buf, file);
}