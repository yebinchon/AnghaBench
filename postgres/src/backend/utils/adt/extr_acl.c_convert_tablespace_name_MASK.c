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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC2(text *tablespacename)
{
	char	   *spcname = FUNC1(tablespacename);

	return FUNC0(spcname, false);
}