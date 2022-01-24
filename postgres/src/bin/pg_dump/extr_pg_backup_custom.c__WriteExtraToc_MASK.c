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
struct TYPE_4__ {int /*<<< orphan*/  dataState; int /*<<< orphan*/  dataPos; } ;
typedef  TYPE_1__ lclTocEntry ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef  TYPE_2__ TocEntry ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(ArchiveHandle *AH, TocEntry *te)
{
	lclTocEntry *ctx = (lclTocEntry *) te->formatData;

	FUNC0(AH, ctx->dataPos, ctx->dataState);
}