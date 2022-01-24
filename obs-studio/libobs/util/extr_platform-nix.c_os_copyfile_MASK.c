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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 

int FUNC6(const char *file_path_in, const char *file_path_out)
{
	FILE *file_out = NULL;
	FILE *file_in = NULL;
	uint8_t data[4096];
	int ret = -1;
	size_t size;

	if (FUNC5(file_path_out))
		return -1;

	file_in = FUNC2(file_path_in, "rb");
	if (!file_in)
		return -1;

	file_out = FUNC2(file_path_out, "ab+");
	if (!file_out)
		goto error;

	do {
		size = FUNC3(data, 1, sizeof(data), file_in);
		if (size)
			size = FUNC4(data, 1, size, file_out);
	} while (size == sizeof(data));

	ret = FUNC1(file_in) ? 0 : -1;

error:
	if (file_out)
		FUNC0(file_out);
	FUNC0(file_in);
	return ret;
}