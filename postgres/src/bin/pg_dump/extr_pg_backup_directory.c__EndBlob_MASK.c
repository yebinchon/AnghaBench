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
struct TYPE_4__ {int /*<<< orphan*/  blobsTocFH; int /*<<< orphan*/ * dataFH; } ;
typedef  TYPE_1__ lclContext ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  TocEntry ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef  int Oid ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int,char*,int,int) ; 

__attribute__((used)) static void
FUNC4(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	char		buf[50];
	int			len;

	/* Close the BLOB data file itself */
	FUNC0(ctx->dataFH);
	ctx->dataFH = NULL;

	/* register the blob in blobs.toc */
	len = FUNC3(buf, sizeof(buf), "%u blob_%u.dat\n", oid, oid);
	if (FUNC1(buf, len, ctx->blobsTocFH) != len)
		FUNC2("could not write to blobs TOC file");
}