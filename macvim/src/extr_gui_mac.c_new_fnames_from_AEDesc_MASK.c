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
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  Ptr ;
typedef  scalar_t__ OSErr ;
typedef  int /*<<< orphan*/  FSSpec ;
typedef  int /*<<< orphan*/  DescType ;
typedef  int /*<<< orphan*/  AEKeyword ;
typedef  int /*<<< orphan*/  AEDesc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,long*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,long*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (long) ; 
 int /*<<< orphan*/  typeFSS ; 

char_u **
FUNC4(AEDesc *theList, long *numFiles, OSErr *error)
{
    char_u	**fnames = NULL;
    OSErr	newError;
    long	fileCount;
    FSSpec	fileToOpen;
    long	actualSize;
    AEKeyword	dummyKeyword;
    DescType	dummyType;

    /* Get number of files in list */
    *error = FUNC0(theList, numFiles);
    if (*error)
	return fnames;

    /* Allocate the pointer list */
    fnames = (char_u **) FUNC3(*numFiles * sizeof(char_u *));

    /* Empty out the list */
    for (fileCount = 0; fileCount < *numFiles; fileCount++)
	fnames[fileCount] = NULL;

    /* Scan the list of FSSpec */
    for (fileCount = 1; fileCount <= *numFiles; fileCount++)
    {
	/* Get the alias for the nth file, convert to an FSSpec */
	newError = FUNC1(theList, fileCount, typeFSS,
				&dummyKeyword, &dummyType,
				(Ptr) &fileToOpen, sizeof(FSSpec), &actualSize);
	if (newError)
	{
	    /* Caller is able to clean up */
	    /* TODO: Should be clean up or not? For safety. */
	    return fnames;
	}

	/* Convert the FSSpec to a pathname */
	fnames[fileCount - 1] = FUNC2(fileToOpen);
    }

    return (fnames);
}