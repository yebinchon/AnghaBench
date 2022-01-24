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
struct dstr {char* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,char*) ; 
 char* FUNC3 (char*,char) ; 

const char *FUNC4(const char *path)
{
	struct dstr temp;
	size_t pos = 0;
	char *period;
	char *slash;

	FUNC1(&temp, path);
	FUNC2(&temp, "\\", "/");

	slash = FUNC3(temp.array, '/');
	period = FUNC3(temp.array, '.');
	if (period)
		pos = (size_t)(period - temp.array);

	FUNC0(&temp);

	if (!period || slash > period)
		return NULL;

	return path + pos;
}