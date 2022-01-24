#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ lclTocEntry ;
struct TYPE_9__ {int /*<<< orphan*/ * dataFH; } ;
typedef  TYPE_2__ lclContext ;
struct TYPE_10__ {scalar_t__ formatData; } ;
typedef  TYPE_3__ TocEntry ;
struct TYPE_11__ {int /*<<< orphan*/  compression; scalar_t__ formatData; } ;
typedef  TYPE_4__ ArchiveHandle ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BINARY_W ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ArchiveHandle *AH, TocEntry *te)
{
	lclTocEntry *tctx = (lclTocEntry *) te->formatData;
	lclContext *ctx = (lclContext *) AH->formatData;
	char		fname[MAXPGPATH];

	FUNC2(AH, fname, tctx->filename);

	ctx->dataFH = FUNC0(fname, PG_BINARY_W, AH->compression);
	if (ctx->dataFH == NULL)
		FUNC1("could not open output file \"%s\": %m", fname);
}