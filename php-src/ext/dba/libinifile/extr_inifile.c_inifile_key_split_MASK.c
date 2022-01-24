#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* name; void* group; } ;
typedef  TYPE_1__ key_type ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 void* FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*,char) ; 

key_type FUNC3(const char *group_name)
{
	key_type key;
	char *name;

	if (group_name[0] == '[' && (name = FUNC2(group_name, ']')) != NULL) {
		key.group = FUNC1(group_name+1, name - (group_name + 1));
		key.name = FUNC0(name+1);
	} else {
		key.group = FUNC0("");
		key.name = FUNC0(group_name);
	}
	return key;
}