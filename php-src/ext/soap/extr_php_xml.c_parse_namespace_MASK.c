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
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int FALSE ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (char*,char) ; 

int FUNC3(const xmlChar *inval, char **value, char **namespace)
{
	char *found = FUNC2((char*)inval, ':');

	if (found != NULL && found != (char*)inval) {
		(*namespace) = FUNC1((char*)inval, found - (char*)inval);
		(*value) = FUNC0(++found);
	} else {
		(*value) = FUNC0((char*)inval);
		(*namespace) = NULL;
	}

	return FALSE;
}