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
struct TYPE_4__ {int filePos; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_5__ {int /*<<< orphan*/  FH; scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(ArchiveHandle *AH)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	int			res;

	res = FUNC1(AH->FH);
	if (res == EOF)
		FUNC0(AH->FH);
	ctx->filePos += 1;
	return res;
}