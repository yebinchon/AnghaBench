#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_3__ {int numFiles; int /*<<< orphan*/  name; int /*<<< orphan*/ * files; int /*<<< orphan*/ * fileset; } ;
typedef  TYPE_1__ BufFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_PHYSICAL_FILESIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int64
FUNC6(BufFile *file)
{
	int64		lastFileSize;

	FUNC0(file->fileset != NULL);

	/* Get the size of the last physical file. */
	lastFileSize = FUNC2(file->files[file->numFiles - 1]);
	if (lastFileSize < 0)
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("could not determine size of temporary file \"%s\" from BufFile \"%s\": %m",
						FUNC1(file->files[file->numFiles - 1]),
						file->name)));

	return ((file->numFiles - 1) * (int64) MAX_PHYSICAL_FILESIZE) +
		lastFileSize;
}