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

/* Variables and functions */
 char* FUNC0 (char*,char*) ; 

__attribute__((used)) static char* FUNC1(char *type) {
	char *name = NULL;
	if ((name = FUNC0 (type, "=type")) ||
		(name = FUNC0 (type, "=struct")) ||
		(name = FUNC0 (type, "=union")) ||
		(name = FUNC0 (type, "=enum")) ||
		(name = FUNC0 (type, "=typedef")) ||
		(name = FUNC0 (type, "=func"))) {
		return name;
	}
	return NULL;
}