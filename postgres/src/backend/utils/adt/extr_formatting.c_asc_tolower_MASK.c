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
 char FUNC0 (unsigned char) ; 
 char* FUNC1 (char const*,size_t) ; 

char *
FUNC2(const char *buff, size_t nbytes)
{
	char	   *result;
	char	   *p;

	if (!buff)
		return NULL;

	result = FUNC1(buff, nbytes);

	for (p = result; *p; p++)
		*p = FUNC0((unsigned char) *p);

	return result;
}