#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* directory; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 scalar_t__ MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(ArchiveHandle *AH, char *buf, const char *relativeFilename)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	char	   *dname;

	dname = ctx->directory;

	if (FUNC3(dname) + 1 + FUNC3(relativeFilename) + 1 > MAXPGPATH)
		FUNC0("file name too long: \"%s\"", dname);

	FUNC2(buf, dname);
	FUNC1(buf, "/");
	FUNC1(buf, relativeFilename);
}