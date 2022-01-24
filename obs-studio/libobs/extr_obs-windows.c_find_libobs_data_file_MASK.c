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
 scalar_t__ FUNC0 (char const*,char*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 

char *FUNC3(const char *file)
{
	struct dstr path;
	FUNC2(&path);

	if (FUNC0(file, "data/libobs/", &path))
		return path.array;

	if (FUNC0(file, "../../data/libobs/", &path))
		return path.array;

	FUNC1(&path);
	return NULL;
}