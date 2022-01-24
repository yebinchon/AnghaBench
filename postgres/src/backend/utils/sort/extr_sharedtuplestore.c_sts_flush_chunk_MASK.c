#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {size_t participant; TYPE_2__* sts; TYPE_5__* write_chunk; int /*<<< orphan*/ * write_pointer; int /*<<< orphan*/  write_file; } ;
struct TYPE_8__ {TYPE_1__* participants; } ;
struct TYPE_7__ {size_t npages; } ;
typedef  TYPE_3__ SharedTuplestoreAccessor ;

/* Variables and functions */
 size_t BLCKSZ ; 
 size_t FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  ERROR ; 
 size_t STS_CHUNK_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC5(SharedTuplestoreAccessor *accessor)
{
	size_t		size;
	size_t		written;

	size = STS_CHUNK_PAGES * BLCKSZ;
	written = FUNC0(accessor->write_file, accessor->write_chunk, size);
	if (written != size)
		FUNC1(ERROR,
				(FUNC2(),
				 FUNC3("could not write to temporary file: %m")));
	FUNC4(accessor->write_chunk, 0, size);
	accessor->write_pointer = &accessor->write_chunk->data[0];
	accessor->sts->participants[accessor->participant].npages +=
		STS_CHUNK_PAGES;
}