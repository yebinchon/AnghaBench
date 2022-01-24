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
typedef  int /*<<< orphan*/  gdIOCtx ;
typedef  int /*<<< orphan*/  CODE_STATIC_DATA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 scalar_t__ VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 

__attribute__((used)) static int
FUNC2(gdIOCtx *fd, CODE_STATIC_DATA *scd, int code_size, int flag, int *ZeroDataBlockP)
{
	int rv;

 rv = FUNC0(fd, scd, code_size,flag, ZeroDataBlockP);
 if (VERBOSE) FUNC1("[GetCode(,%d,%d) returning %d]\n",code_size,flag,rv);
	return(rv);
}