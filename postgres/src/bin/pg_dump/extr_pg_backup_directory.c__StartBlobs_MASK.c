#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * blobsTocFH; } ;
typedef  TYPE_1__ lclContext ;
typedef  int /*<<< orphan*/  TocEntry ;
struct TYPE_6__ {scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 

__attribute__((used)) static void
FUNC3(ArchiveHandle *AH, TocEntry *te)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	char		fname[MAXPGPATH];

	FUNC2(AH, fname, "blobs.toc");

	/* The blob TOC file is never compressed */
	ctx->blobsTocFH = FUNC0(fname, "ab", 0);
	if (ctx->blobsTocFH == NULL)
		FUNC1("could not open output file \"%s\": %m", fname);
}