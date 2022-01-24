#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int blockSize; int /*<<< orphan*/  blocks; int /*<<< orphan*/ * block; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ GenerationContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GenerationChunk ; 
 int /*<<< orphan*/  GenerationMethods ; 
 scalar_t__ Generation_CHUNKHDRSZ ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  T_GenerationContext ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

MemoryContext
FUNC13(MemoryContext parent,
						const char *name,
						Size blockSize)
{
	GenerationContext *set;

	/* Assert we padded GenerationChunk properly */
	FUNC4(Generation_CHUNKHDRSZ == FUNC1(Generation_CHUNKHDRSZ),
					 "sizeof(GenerationChunk) is not maxaligned");
	FUNC4(FUNC12(GenerationChunk, context) + sizeof(MemoryContext) ==
					 Generation_CHUNKHDRSZ,
					 "padding calculation in GenerationChunk is wrong");

	/*
	 * First, validate allocation parameters.  (If we're going to throw an
	 * error, we should do so before the context is created, not after.)  We
	 * somewhat arbitrarily enforce a minimum 1K block size, mostly because
	 * that's what AllocSet does.
	 */
	if (blockSize != FUNC1(blockSize) ||
		blockSize < 1024 ||
		!FUNC0(blockSize))
		FUNC6(ERROR, "invalid blockSize for memory context: %zu",
			 blockSize);

	/*
	 * Allocate the context header.  Unlike aset.c, we never try to combine
	 * this with the first regular block, since that would prevent us from
	 * freeing the first generation of allocations.
	 */

	set = (GenerationContext *) FUNC11(FUNC1(sizeof(GenerationContext)));
	if (set == NULL)
	{
		FUNC3(TopMemoryContext);
		FUNC7(ERROR,
				(FUNC8(ERRCODE_OUT_OF_MEMORY),
				 FUNC10("out of memory"),
				 FUNC9("Failed while creating memory context \"%s\".",
						   name)));
	}

	/*
	 * Avoid writing code that can fail between here and MemoryContextCreate;
	 * we'd leak the header if we ereport in this stretch.
	 */

	/* Fill in GenerationContext-specific header fields */
	set->blockSize = blockSize;
	set->block = NULL;
	FUNC5(&set->blocks);

	/* Finally, do the type-independent part of context creation */
	FUNC2((MemoryContext) set,
						T_GenerationContext,
						&GenerationMethods,
						parent,
						name);

	return (MemoryContext) set;
}