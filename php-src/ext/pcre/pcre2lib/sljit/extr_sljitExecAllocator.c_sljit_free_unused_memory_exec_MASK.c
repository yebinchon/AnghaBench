#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  prev_size; } ;
struct free_block {scalar_t__ size; TYPE_1__ header; struct free_block* next; } ;
struct block_header {int dummy; } ;
struct TYPE_4__ {int size; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct free_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct free_block* free_blocks ; 
 int /*<<< orphan*/  FUNC4 (struct free_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct free_block*) ; 
 scalar_t__ total_size ; 

void FUNC6(void)
{
	struct free_block* free_block;
	struct free_block* next_free_block;

	FUNC2();

	free_block = free_blocks;
	while (free_block) {
		next_free_block = free_block->next;
		if (!free_block->header.prev_size && 
				FUNC0(free_block, free_block->size)->size == 1) {
			total_size -= free_block->size;
			FUNC5(free_block);
			FUNC4(free_block, free_block->size + sizeof(struct block_header));
		}
		free_block = next_free_block;
	}

	FUNC1((total_size && free_blocks) || (!total_size && !free_blocks));
	FUNC3();
}