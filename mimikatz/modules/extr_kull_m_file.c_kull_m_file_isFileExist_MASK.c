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
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 

BOOL FUNC2(PCWCHAR fileName)
{
	BOOL reussite = FALSE;
	HANDLE hFile = NULL;

	reussite = ((hFile = FUNC1(fileName, 0, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL)) && hFile != INVALID_HANDLE_VALUE);
	if(reussite)
		FUNC0(hFile);
	return reussite;
}