#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct os_globent {int path; int /*<<< orphan*/  directory; } ;
struct dstr {int array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int,char) ; 

__attribute__((used)) static void FUNC7(struct os_globent *ent, WIN32_FIND_DATA *wfd,
			 const char *pattern)
{
	struct dstr name = {0};
	struct dstr path = {0};
	char *slash;

	FUNC3(&name, wfd->cFileName);
	FUNC1(&path, pattern);
	slash = FUNC6(path.array, '/');
	if (slash)
		FUNC4(&path, slash + 1 - path.array);
	else
		FUNC2(&path);

	FUNC0(&path, &name);
	ent->path = path.array;
	ent->directory = FUNC5(wfd);

	FUNC2(&name);
}