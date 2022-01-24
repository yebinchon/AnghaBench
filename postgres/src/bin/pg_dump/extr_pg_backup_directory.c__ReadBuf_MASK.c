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
struct TYPE_4__ {int /*<<< orphan*/  dataFH; } ;
typedef  TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 size_t FUNC0 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(ArchiveHandle *AH, void *buf, size_t len)
{
	lclContext *ctx = (lclContext *) AH->formatData;

	/*
	 * If there was an I/O error, we already exited in cfread(), so here we
	 * exit on short reads.
	 */
	if (FUNC0(buf, len, ctx->dataFH) != len)
		FUNC1("could not read from input file: end of file");

	return;
}