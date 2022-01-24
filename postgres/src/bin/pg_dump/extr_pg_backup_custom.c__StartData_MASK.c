#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  dataState; int /*<<< orphan*/  dataPos; } ;
typedef  TYPE_1__ lclTocEntry ;
struct TYPE_12__ {int /*<<< orphan*/  cs; } ;
typedef  TYPE_2__ lclContext ;
struct TYPE_13__ {int /*<<< orphan*/  dumpId; scalar_t__ formatData; } ;
typedef  TYPE_3__ TocEntry ;
struct TYPE_14__ {int /*<<< orphan*/  compression; scalar_t__ formatData; } ;
typedef  TYPE_4__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLK_DATA ; 
 int /*<<< orphan*/  K_OFFSET_POS_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _CustomWriteFunc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(ArchiveHandle *AH, TocEntry *te)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	lclTocEntry *tctx = (lclTocEntry *) te->formatData;

	tctx->dataPos = FUNC3(AH, ctx);
	tctx->dataState = K_OFFSET_POS_SET;

	FUNC2(AH, BLK_DATA);	/* Block type */
	FUNC1(AH, te->dumpId);	/* For sanity check */

	ctx->cs = FUNC0(AH->compression, _CustomWriteFunc);
}