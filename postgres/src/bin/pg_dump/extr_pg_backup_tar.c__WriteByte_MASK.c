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
struct TYPE_4__ {int filePos; int /*<<< orphan*/  FH; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE_ERROR_EXIT ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(ArchiveHandle *AH, const int i)
{
	lclContext *ctx = (lclContext *) AH->formatData;
	char		b = i;			/* Avoid endian problems */

	if (FUNC0(&b, 1, ctx->FH) != 1)
		WRITE_ERROR_EXIT;

	ctx->filePos += 1;
	return 1;
}