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
struct file {char const* name; struct file* next; } ;

/* Variables and functions */
 struct file* file_list ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*) ; 
 struct file* FUNC4 (int) ; 

struct file *FUNC5(const char *name)
{
	struct file *file;
	const char *file_name = FUNC3(name);

	for (file = file_list; file; file = file->next) {
		if (!FUNC2(name, file->name)) {
			FUNC0((void *)file_name);
			return file;
		}
	}

	file = FUNC4(sizeof(*file));
	FUNC1(file, 0, sizeof(*file));
	file->name = file_name;
	file->next = file_list;
	file_list = file;
	return file;
}