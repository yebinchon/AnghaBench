#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dataState; int /*<<< orphan*/  dataPos; } ;
typedef  TYPE_1__ lclTocEntry ;
typedef  int /*<<< orphan*/  lclContext ;
struct TYPE_10__ {int /*<<< orphan*/  dumpId; scalar_t__ formatData; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_11__ {scalar_t__ formatData; } ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BLOBS ; 
 int /*<<< orphan*/  K_OFFSET_POS_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(ArchiveHandle *AH, TocEntry *te)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	lclTocEntry *tctx = (lclTocEntry *) te->formatData;

	tctx->dataPos = FUNC2(AH, ctx);
	tctx->dataState = K_OFFSET_POS_SET;

	FUNC1(AH, BLK_BLOBS);	/* Block type */
	FUNC0(AH, te->dumpId);	/* For sanity check */
}