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
typedef  int /*<<< orphan*/  regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ *) ; 

bool
FUNC2(text *text_re, char *dat, int dat_len,
					   int cflags, Oid collation,
					   int nmatch, regmatch_t *pmatch)
{
	regex_t    *re;

	/* Compile RE */
	re = FUNC0(text_re, cflags, collation);

	return FUNC1(re, dat, dat_len, nmatch, pmatch);
}