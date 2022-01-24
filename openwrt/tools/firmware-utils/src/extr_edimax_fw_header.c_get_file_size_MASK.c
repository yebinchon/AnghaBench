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
struct stat {int st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,struct stat*) ; 

__attribute__((used)) static int FUNC2(char *name)
{
	struct stat st;
	int res;

	res = FUNC1(name, &st);
	if (res){
		FUNC0("stat failed on %s", name);
		return -1;
	}

	return st.st_size;
}