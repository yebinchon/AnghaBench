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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

int FUNC4(char *name, char *value, int overwrite) /* {{{ */
{
	int name_len = FUNC3(name);
	int value_len = FUNC3(value);
	char *var = FUNC0(name_len + 1 + value_len + 1);

	FUNC1(var, name, name_len);

	var[name_len] = '=';

	FUNC1(var + name_len + 1, value, value_len);

	var[name_len + 1 + value_len] = '\0';

	return FUNC2(var);
}