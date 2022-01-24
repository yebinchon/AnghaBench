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
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 char FUNC3 (struct dstr*) ; 

__attribute__((used)) static char *FUNC4(const char *dir, const char *file)
{
	struct dstr str = {0};

	FUNC2(&str, dir);

	if (str.array && FUNC3(&str) != '/' && FUNC3(&str) != '\\')
		FUNC1(&str, '/');

	FUNC0(&str, file);
	return str.array;
}