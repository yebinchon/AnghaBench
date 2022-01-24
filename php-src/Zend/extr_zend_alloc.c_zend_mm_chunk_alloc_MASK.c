#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t zend_uintptr_t ;
struct TYPE_7__ {TYPE_4__* storage; } ;
typedef  TYPE_2__ zend_mm_heap ;
struct TYPE_6__ {void* (* chunk_alloc ) (TYPE_4__*,size_t,size_t) ;} ;
struct TYPE_8__ {TYPE_1__ handlers; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (TYPE_4__*,size_t,size_t) ; 
 void* FUNC3 (size_t,size_t) ; 

__attribute__((used)) static void *FUNC4(zend_mm_heap *heap, size_t size, size_t alignment)
{
#if ZEND_MM_STORAGE
	if (UNEXPECTED(heap->storage)) {
		void *ptr = heap->storage->handlers.chunk_alloc(heap->storage, size, alignment);
		ZEND_ASSERT(((zend_uintptr_t)((char*)ptr + (alignment-1)) & (alignment-1)) == (zend_uintptr_t)ptr);
		return ptr;
	}
#endif
	return FUNC3(size, alignment);
}