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
struct TYPE_5__ {TYPE_2__* coder; int /*<<< orphan*/ * end; } ;
struct TYPE_6__ {TYPE_1__ lzma; } ;
typedef  TYPE_2__ lzma_coder ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(lzma_coder *coder, lzma_allocator *allocator)
{
	FUNC0(coder->lzma.end == NULL);
	FUNC1(coder->lzma.coder, allocator);

	FUNC1(coder, allocator);

	return;
}