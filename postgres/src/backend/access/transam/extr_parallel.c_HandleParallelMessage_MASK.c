#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_18__ {int /*<<< orphan*/  context; int /*<<< orphan*/  elevel; } ;
struct TYPE_17__ {int* known_attached_workers; TYPE_1__* worker; int /*<<< orphan*/ * error_context_stack; int /*<<< orphan*/  nknown_attached_workers; } ;
struct TYPE_16__ {int /*<<< orphan*/  len; } ;
struct TYPE_15__ {int /*<<< orphan*/ * error_mqh; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__* StringInfo ;
typedef  TYPE_3__ ParallelContext ;
typedef  TYPE_4__ ErrorData ;
typedef  int /*<<< orphan*/  ErrorContextCallback ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FORCE_PARALLEL_REGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * error_context_stack ; 
 int /*<<< orphan*/  force_parallel_mode ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 char FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 char* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(ParallelContext *pcxt, int i, StringInfo msg)
{
	char		msgtype;

	if (pcxt->known_attached_workers != NULL &&
		!pcxt->known_attached_workers[i])
	{
		pcxt->known_attached_workers[i] = true;
		pcxt->nknown_attached_workers++;
	}

	msgtype = FUNC6(msg);

	switch (msgtype)
	{
		case 'K':				/* BackendKeyData */
			{
				int32		pid = FUNC8(msg, 4);

				(void) FUNC8(msg, 4);	/* discard cancel key */
				(void) FUNC7(msg);
				pcxt->worker[i].pid = pid;
				break;
			}

		case 'E':				/* ErrorResponse */
		case 'N':				/* NoticeResponse */
			{
				ErrorData	edata;
				ErrorContextCallback *save_error_context_stack;

				/* Parse ErrorResponse or NoticeResponse. */
				FUNC10(msg, &edata);

				/* Death of a worker isn't enough justification for suicide. */
				edata.elevel = FUNC0(edata.elevel, ERROR);

				/*
				 * If desired, add a context line to show that this is a
				 * message propagated from a parallel worker.  Otherwise, it
				 * can sometimes be confusing to understand what actually
				 * happened.  (We don't do this in FORCE_PARALLEL_REGRESS mode
				 * because it causes test-result instability depending on
				 * whether a parallel worker is actually used or not.)
				 */
				if (force_parallel_mode != FORCE_PARALLEL_REGRESS)
				{
					if (edata.context)
						edata.context = FUNC11("%s\n%s", edata.context,
												 FUNC3("parallel worker"));
					else
						edata.context = FUNC12(FUNC3("parallel worker"));
				}

				/*
				 * Context beyond that should use the error context callbacks
				 * that were in effect when the ParallelContext was created,
				 * not the current ones.
				 */
				save_error_context_stack = error_context_stack;
				error_context_stack = pcxt->error_context_stack;

				/* Rethrow error or print notice. */
				FUNC2(&edata);

				/* Not an error, so restore previous context stack. */
				error_context_stack = save_error_context_stack;

				break;
			}

		case 'A':				/* NotifyResponse */
			{
				/* Propagate NotifyResponse. */
				int32		pid;
				const char *channel;
				const char *payload;

				pid = FUNC8(msg, 4);
				channel = FUNC9(msg);
				payload = FUNC9(msg);
				FUNC5(msg);

				FUNC1(channel, payload, pid);

				break;
			}

		case 'X':				/* Terminate, indicating clean exit */
			{
				FUNC13(pcxt->worker[i].error_mqh);
				pcxt->worker[i].error_mqh = NULL;
				break;
			}

		default:
			{
				FUNC4(ERROR, "unrecognized message type received from parallel worker: %c (message length %d bytes)",
					 msgtype, msg->len);
			}
	}
}