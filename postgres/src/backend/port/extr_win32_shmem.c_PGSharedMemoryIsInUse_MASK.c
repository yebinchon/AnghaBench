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
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

bool
FUNC4(unsigned long id1, unsigned long id2)
{
	char	   *szShareMem;
	HANDLE		hmap;

	szShareMem = FUNC1();

	hmap = FUNC2(FILE_MAP_READ, FALSE, szShareMem);

	FUNC3(szShareMem);

	if (hmap == NULL)
		return false;

	FUNC0(hmap);
	return true;
}