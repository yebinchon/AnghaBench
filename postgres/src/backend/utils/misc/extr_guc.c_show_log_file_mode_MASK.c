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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int Log_file_mode ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 

__attribute__((used)) static const char *
FUNC1(void)
{
	static char buf[12];

	FUNC0(buf, sizeof(buf), "%04o", Log_file_mode);
	return buf;
}