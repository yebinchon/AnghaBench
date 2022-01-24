#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_18__ {int nused; int /*<<< orphan*/ * linenos; int /*<<< orphan*/ ** slots; int /*<<< orphan*/  bistate; TYPE_2__* resultRelInfo; } ;
struct TYPE_17__ {int ti_options; int /*<<< orphan*/  mycid; TYPE_3__* estate; TYPE_4__* cstate; } ;
struct TYPE_16__ {int line_buf_valid; int /*<<< orphan*/  cur_lineno; int /*<<< orphan*/  transition_capture; } ;
struct TYPE_15__ {TYPE_2__* es_result_relation_info; } ;
struct TYPE_14__ {scalar_t__ ri_NumIndices; TYPE_1__* ri_TrigDesc; int /*<<< orphan*/  ri_RelationDesc; } ;
struct TYPE_13__ {scalar_t__ trig_insert_new_table; scalar_t__ trig_insert_after_row; } ;
typedef  TYPE_2__ ResultRelInfo ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ EState ;
typedef  TYPE_4__* CopyState ;
typedef  TYPE_5__ CopyMultiInsertInfo ;
typedef  TYPE_6__ CopyMultiInsertBuffer ;
typedef  int /*<<< orphan*/  CommandId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC7(CopyMultiInsertInfo *miinfo,
						   CopyMultiInsertBuffer *buffer)
{
	MemoryContext oldcontext;
	int			i;
	uint64		save_cur_lineno;
	CopyState	cstate = miinfo->cstate;
	EState	   *estate = miinfo->estate;
	CommandId	mycid = miinfo->mycid;
	int			ti_options = miinfo->ti_options;
	bool		line_buf_valid = cstate->line_buf_valid;
	int			nused = buffer->nused;
	ResultRelInfo *resultRelInfo = buffer->resultRelInfo;
	TupleTableSlot **slots = buffer->slots;

	/* Set es_result_relation_info to the ResultRelInfo we're flushing. */
	estate->es_result_relation_info = resultRelInfo;

	/*
	 * Print error context information correctly, if one of the operations
	 * below fail.
	 */
	cstate->line_buf_valid = false;
	save_cur_lineno = cstate->cur_lineno;

	/*
	 * table_multi_insert may leak memory, so switch to short-lived memory
	 * context before calling it.
	 */
	oldcontext = FUNC4(FUNC3(estate));
	FUNC6(resultRelInfo->ri_RelationDesc,
					   slots,
					   nused,
					   mycid,
					   ti_options,
					   buffer->bistate);
	FUNC4(oldcontext);

	for (i = 0; i < nused; i++)
	{
		/*
		 * If there are any indexes, update them for all the inserted tuples,
		 * and run AFTER ROW INSERT triggers.
		 */
		if (resultRelInfo->ri_NumIndices > 0)
		{
			List	   *recheckIndexes;

			cstate->cur_lineno = buffer->linenos[i];
			recheckIndexes =
				FUNC2(buffer->slots[i], estate, false, NULL,
									  NIL);
			FUNC0(estate, resultRelInfo,
								 slots[i], recheckIndexes,
								 cstate->transition_capture);
			FUNC5(recheckIndexes);
		}

		/*
		 * There's no indexes, but see if we need to run AFTER ROW INSERT
		 * triggers anyway.
		 */
		else if (resultRelInfo->ri_TrigDesc != NULL &&
				 (resultRelInfo->ri_TrigDesc->trig_insert_after_row ||
				  resultRelInfo->ri_TrigDesc->trig_insert_new_table))
		{
			cstate->cur_lineno = buffer->linenos[i];
			FUNC0(estate, resultRelInfo,
								 slots[i], NIL, cstate->transition_capture);
		}

		FUNC1(slots[i]);
	}

	/* Mark that all slots are free */
	buffer->nused = 0;

	/* reset cur_lineno and line_buf_valid to what they were */
	cstate->line_buf_valid = line_buf_valid;
	cstate->cur_lineno = save_cur_lineno;
}