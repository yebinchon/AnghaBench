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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 scalar_t__ DestRemote ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ whereToSendOutput ; 

__attribute__((used)) static int
FUNC2(StringInfo inBuf)
{
	int			result;

	if (whereToSendOutput == DestRemote)
		result = FUNC1(inBuf);
	else
		result = FUNC0(inBuf);
	return result;
}