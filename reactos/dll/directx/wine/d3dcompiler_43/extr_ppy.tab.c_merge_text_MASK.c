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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4(char *s1, char *s2)
{
	int l1;
	int l2;
	char *snew;
	if(!s1)
		return s2;
	if(!s2)
		return s1;
	l1 = FUNC3(s1);
	l2 = FUNC3(s2);
	snew = FUNC2(s1, l1+l2+1);
	if(!snew)
	{
		FUNC0(s2);
		return s1;
	}
	s1 = snew;
	FUNC1(s1+l1, s2, l2+1);
	FUNC0(s2);
	return s1;
}