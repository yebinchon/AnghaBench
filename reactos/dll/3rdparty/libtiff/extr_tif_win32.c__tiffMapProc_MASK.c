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
typedef  scalar_t__ uint64 ;
typedef  scalar_t__ toff_t ;
typedef  scalar_t__ tmsize_t ;
typedef  int /*<<< orphan*/  thandle_t ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(thandle_t fd, void** pbase, toff_t* psize)
{
	uint64 size;
	tmsize_t sizem;
	HANDLE hMapFile;

	size = FUNC3(fd);
	sizem = (tmsize_t)size;
	if ((uint64)sizem!=size)
		return (0);

	/* By passing in 0 for the maximum file size, it specifies that we
	   create a file mapping object for the full file size. */
	hMapFile = FUNC1(fd, NULL, PAGE_READONLY, 0, 0, NULL);
	if (hMapFile == NULL)
		return (0);
	*pbase = FUNC2(hMapFile, FILE_MAP_READ, 0, 0, 0);
	FUNC0(hMapFile);
	if (*pbase == NULL)
		return (0);
	*psize = size;
	return(1);
}