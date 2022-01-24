#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sljit_memory_fragment {struct sljit_memory_fragment* cpool; struct sljit_memory_fragment* next; struct sljit_memory_fragment* abuf; struct sljit_memory_fragment* buf; void* allocator_data; } ;
struct sljit_compiler {struct sljit_compiler* cpool; struct sljit_compiler* next; struct sljit_compiler* abuf; struct sljit_compiler* buf; void* allocator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sljit_memory_fragment*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void FUNC2(struct sljit_compiler *compiler)
{
	struct sljit_memory_fragment *buf;
	struct sljit_memory_fragment *curr;
	void *allocator_data = compiler->allocator_data;
	FUNC1(allocator_data);

	buf = compiler->buf;
	while (buf) {
		curr = buf;
		buf = buf->next;
		FUNC0(curr, allocator_data);
	}

	buf = compiler->abuf;
	while (buf) {
		curr = buf;
		buf = buf->next;
		FUNC0(curr, allocator_data);
	}

#if (defined SLJIT_CONFIG_ARM_V5 && SLJIT_CONFIG_ARM_V5)
	SLJIT_FREE(compiler->cpool, allocator_data);
#endif
	FUNC0(compiler, allocator_data);
}