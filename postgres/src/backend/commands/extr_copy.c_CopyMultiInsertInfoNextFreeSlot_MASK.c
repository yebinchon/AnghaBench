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
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_5__ {int nused; int /*<<< orphan*/ ** slots; } ;
struct TYPE_4__ {int /*<<< orphan*/  ri_RelationDesc; TYPE_2__* ri_CopyMultiInsertBuffer; } ;
typedef  TYPE_1__ ResultRelInfo ;
typedef  int /*<<< orphan*/  CopyMultiInsertInfo ;
typedef  TYPE_2__ CopyMultiInsertBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_BUFFERED_TUPLES ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline TupleTableSlot *
FUNC2(CopyMultiInsertInfo *miinfo,
								ResultRelInfo *rri)
{
	CopyMultiInsertBuffer *buffer = rri->ri_CopyMultiInsertBuffer;
	int			nused = buffer->nused;

	FUNC0(buffer != NULL);
	FUNC0(nused < MAX_BUFFERED_TUPLES);

	if (buffer->slots[nused] == NULL)
		buffer->slots[nused] = FUNC1(rri->ri_RelationDesc, NULL);
	return buffer->slots[nused];
}