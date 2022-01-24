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
typedef  int /*<<< orphan*/  LZW_STATIC_DATA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char,int,int*) ; 
 scalar_t__ VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int,int) ; 

__attribute__((used)) static int
FUNC2(gdIOCtx *fd, LZW_STATIC_DATA *sd, char flag, int input_code_size, int *ZeroDataBlockP)
{
	int rv;

 rv = FUNC0(fd, sd, flag, input_code_size, ZeroDataBlockP);
 if (VERBOSE) FUNC1("[LWZReadByte(,%d,%d) returning %d]\n",flag,input_code_size,rv);
	return(rv);
}