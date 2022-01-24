#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ nused; TYPE_1__* resultRelInfo; int /*<<< orphan*/ ** slots; int /*<<< orphan*/  bistate; } ;
struct TYPE_8__ {int /*<<< orphan*/  ti_options; } ;
struct TYPE_7__ {int /*<<< orphan*/  ri_RelationDesc; int /*<<< orphan*/ * ri_CopyMultiInsertBuffer; } ;
typedef  TYPE_2__ CopyMultiInsertInfo ;
typedef  TYPE_3__ CopyMultiInsertBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_BUFFERED_TUPLES ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(CopyMultiInsertInfo *miinfo,
							 CopyMultiInsertBuffer *buffer)
{
	int			i;

	/* Ensure buffer was flushed */
	FUNC0(buffer->nused == 0);

	/* Remove back-link to ourself */
	buffer->resultRelInfo->ri_CopyMultiInsertBuffer = NULL;

	FUNC2(buffer->bistate);

	/* Since we only create slots on demand, just drop the non-null ones. */
	for (i = 0; i < MAX_BUFFERED_TUPLES && buffer->slots[i] != NULL; i++)
		FUNC1(buffer->slots[i]);

	FUNC4(buffer->resultRelInfo->ri_RelationDesc,
							 miinfo->ti_options);

	FUNC3(buffer);
}