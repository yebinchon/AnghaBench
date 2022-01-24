#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  TH; } ;
typedef  TYPE_1__ lclTocEntry ;
struct TYPE_10__ {int /*<<< orphan*/  blobToc; } ;
typedef  TYPE_2__ lclContext ;
struct TYPE_11__ {scalar_t__ formatData; } ;
typedef  TYPE_3__ TocEntry ;
struct TYPE_12__ {scalar_t__ compression; scalar_t__ formatData; } ;
typedef  int Oid ;
typedef  TYPE_4__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,char*) ; 

__attribute__((used)) static void
FUNC4(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	lclTocEntry *tctx = (lclTocEntry *) te->formatData;
	char		fname[255];
	char	   *sfx;

	if (oid == 0)
		FUNC0("invalid OID for large object (%u)", oid);

	if (AH->compression != 0)
		sfx = ".gz";
	else
		sfx = "";

	FUNC1(fname, "blob_%u.dat%s", oid, sfx);

	FUNC3(AH, ctx->blobToc, "%u %s\n", oid, fname);

	tctx->TH = FUNC2(AH, fname, 'w');
}