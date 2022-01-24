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
typedef  int /*<<< orphan*/  ArchiveMode ;
typedef  int /*<<< orphan*/  ArchiveFormat ;

/* Variables and functions */
 int /*<<< orphan*/  archCustom ; 
 int /*<<< orphan*/  archDirectory ; 
 int /*<<< orphan*/  archModeAppend ; 
 int /*<<< orphan*/  archModeWrite ; 
 int /*<<< orphan*/  archNull ; 
 int /*<<< orphan*/  archTar ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static ArchiveFormat
FUNC2(const char *format, ArchiveMode *mode)
{
	ArchiveFormat archiveFormat;

	*mode = archModeWrite;

	if (FUNC1(format, "a") == 0 || FUNC1(format, "append") == 0)
	{
		/* This is used by pg_dumpall, and is not documented */
		archiveFormat = archNull;
		*mode = archModeAppend;
	}
	else if (FUNC1(format, "c") == 0)
		archiveFormat = archCustom;
	else if (FUNC1(format, "custom") == 0)
		archiveFormat = archCustom;
	else if (FUNC1(format, "d") == 0)
		archiveFormat = archDirectory;
	else if (FUNC1(format, "directory") == 0)
		archiveFormat = archDirectory;
	else if (FUNC1(format, "p") == 0)
		archiveFormat = archNull;
	else if (FUNC1(format, "plain") == 0)
		archiveFormat = archNull;
	else if (FUNC1(format, "t") == 0)
		archiveFormat = archTar;
	else if (FUNC1(format, "tar") == 0)
		archiveFormat = archTar;
	else
		FUNC0("invalid output format \"%s\" specified", format);
	return archiveFormat;
}