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
struct TYPE_6__ {TYPE_1__* filters; int /*<<< orphan*/  index; int /*<<< orphan*/  index_encoder; int /*<<< orphan*/  block_encoder; } ;
typedef  TYPE_2__ lzma_coder ;
typedef  int /*<<< orphan*/  lzma_allocator ;
struct TYPE_5__ {scalar_t__ id; TYPE_2__* options; } ;

/* Variables and functions */
 scalar_t__ LZMA_VLI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(lzma_coder *coder, lzma_allocator *allocator)
{
	FUNC2(&coder->block_encoder, allocator);
	FUNC2(&coder->index_encoder, allocator);
	FUNC1(coder->index, allocator);

	for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
		FUNC0(coder->filters[i].options, allocator);

	FUNC0(coder, allocator);
	return;
}