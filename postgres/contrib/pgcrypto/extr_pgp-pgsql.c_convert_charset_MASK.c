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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (unsigned char*,int,int,int) ; 

__attribute__((used)) static text *
FUNC5(text *src, int cset_from, int cset_to)
{
	int			src_len = FUNC1(src);
	unsigned char *dst;
	unsigned char *csrc = (unsigned char *) FUNC0(src);
	text	   *res;

	dst = FUNC4(csrc, src_len, cset_from, cset_to);
	if (dst == csrc)
		return src;

	res = FUNC2((char *) dst);
	FUNC3(dst);
	return res;
}