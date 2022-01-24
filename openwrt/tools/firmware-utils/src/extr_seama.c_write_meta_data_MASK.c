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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static size_t FUNC3(FILE * fh, char * meta[], size_t size)
{
	size_t i,j;
	size_t ret = 0;

	for (i=0; i<size; i++)
	{
		FUNC2("SEAMA META data : %s\n", meta[i]);
		j = FUNC0(meta[i], sizeof(char), FUNC1(meta[i])+1, fh);
		if (j != FUNC1(meta[i])+1) return 0;
		ret += j;
	}
	//+++ let meta data end on 4 alignment by siyou. 2010/3/1 03:58pm
	j = ((ret+3)/4)*4;
	for ( ; ret < j; ret++)
		FUNC0("", sizeof(char), 1, fh);

	return ret;
}