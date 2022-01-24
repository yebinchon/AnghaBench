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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(text *arg1, text *arg2, Oid collid)
{
	char	   *a1p,
			   *a2p;
	int			len1,
				len2;

	a1p = FUNC0(arg1);
	a2p = FUNC0(arg2);

	len1 = FUNC1(arg1);
	len2 = FUNC1(arg2);

	return FUNC2(a1p, len1, a2p, len2, collid);
}