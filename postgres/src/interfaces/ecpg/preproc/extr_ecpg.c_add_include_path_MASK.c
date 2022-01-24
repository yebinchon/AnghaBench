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
struct _include_path {char* path; struct _include_path* next; } ;

/* Variables and functions */
 struct _include_path* include_paths ; 
 struct _include_path* FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(char *path)
{
	struct _include_path *ip = include_paths,
			   *new;

	new = FUNC0(sizeof(struct _include_path));
	new->path = path;
	new->next = NULL;

	if (ip == NULL)
		include_paths = new;
	else
	{
		for (; ip->next != NULL; ip = ip->next);
		ip->next = new;
	}
}