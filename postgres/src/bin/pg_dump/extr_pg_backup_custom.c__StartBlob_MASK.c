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
struct TYPE_5__ {int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ lclContext ;
typedef  int /*<<< orphan*/  TocEntry ;
struct TYPE_6__ {int /*<<< orphan*/  compression; scalar_t__ formatData; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  _CustomWriteFunc ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
	lclContext *ctx = (lclContext *) AH->formatData;

	if (oid == 0)
		FUNC2("invalid OID for large object");

	FUNC1(AH, oid);

	ctx->cs = FUNC0(AH->compression, _CustomWriteFunc);
}