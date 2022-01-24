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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned long) ; 
 int log_temp_files ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(const char *path, off_t size)
{
	FUNC2(size);

	if (log_temp_files >= 0)
	{
		if ((size / 1024) >= log_temp_files)
			FUNC0(LOG,
					(FUNC1("temporary file: path \"%s\", size %lu",
							path, (unsigned long) size)));
	}
}