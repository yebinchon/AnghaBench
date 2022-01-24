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
typedef  int /*<<< orphan*/  File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_file_create_mode ; 

File
FUNC1(const char *fileName, int fileFlags)
{
	return FUNC0(fileName, fileFlags, pg_file_create_mode);
}