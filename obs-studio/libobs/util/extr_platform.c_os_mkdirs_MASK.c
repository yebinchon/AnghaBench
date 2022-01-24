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
struct dstr {int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const char *dir)
{
	struct dstr dir_str;
	int ret;

	FUNC1(&dir_str, dir);
	FUNC2(&dir_str, "\\", "/");
	ret = FUNC3(dir_str.array);
	FUNC0(&dir_str);
	return ret;
}