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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SR98_RATE_RF_32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC2(HANDLE hFile, BOOL resetAfter)
{
	BOOL status;
	BYTE i;
	status = FUNC1(hFile, 0, 0, 0x40800800, FALSE, 0);
	for(i = 1; i < 8; i++)
		FUNC1(hFile, 0, i, 0x00000000, FALSE, 0);
	if(status && resetAfter)
		FUNC0(hFile, SR98_RATE_RF_32);
	return status;
}