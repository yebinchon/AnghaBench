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
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(void)
{
	char t1[] = "abc  def  ghi  ";
	          /* 123456789012345 */
	char buf[50];
	int k;

	FUNC2("t1: _%s_\n", t1);
	FUNC3(t1);
	FUNC2("t1: _%s_\n", t1);

	k = 2;
	FUNC1(t1, k, buf);
	FUNC2("byleng(t1, %d): %d, ldchar: _%s_\n", k, FUNC0(t1, k), buf);
	k = 5;
	FUNC1(t1, k, buf);
	FUNC2("byleng(t1, %d): %d, ldchar: _%s_\n", k, FUNC0(t1, k), buf);
	k = 9;
	FUNC1(t1, k, buf);
	FUNC2("byleng(t1, %d): %d, ldchar: _%s_\n", k, FUNC0(t1, k), buf);
	k = 15;
	FUNC1(t1, k, buf);
	FUNC2("byleng(t1, %d): %d, ldchar: _%s_\n", k, FUNC0(t1, k), buf);


	return 0;
}