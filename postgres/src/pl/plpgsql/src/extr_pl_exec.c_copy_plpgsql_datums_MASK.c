#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dtype; } ;
struct TYPE_9__ {int ndatums; TYPE_3__** datums; } ;
struct TYPE_8__ {int copiable_size; TYPE_3__** datums; } ;
typedef  int /*<<< orphan*/  PLpgSQL_var ;
typedef  int /*<<< orphan*/  PLpgSQL_rec ;
typedef  TYPE_1__ PLpgSQL_function ;
typedef  TYPE_2__ PLpgSQL_execstate ;
typedef  TYPE_3__ PLpgSQL_datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  PLPGSQL_DTYPE_ARRAYELEM 133 
#define  PLPGSQL_DTYPE_PROMISE 132 
#define  PLPGSQL_DTYPE_REC 131 
#define  PLPGSQL_DTYPE_RECFIELD 130 
#define  PLPGSQL_DTYPE_ROW 129 
#define  PLPGSQL_DTYPE_VAR 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*,int) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(PLpgSQL_execstate *estate,
					PLpgSQL_function *func)
{
	int			ndatums = estate->ndatums;
	PLpgSQL_datum **indatums;
	PLpgSQL_datum **outdatums;
	char	   *workspace;
	char	   *ws_next;
	int			i;

	/* Allocate local datum-pointer array */
	estate->datums = (PLpgSQL_datum **)
		FUNC4(sizeof(PLpgSQL_datum *) * ndatums);

	/*
	 * To reduce palloc overhead, we make a single palloc request for all the
	 * space needed for locally-instantiated datums.
	 */
	workspace = FUNC4(func->copiable_size);
	ws_next = workspace;

	/* Fill datum-pointer array, copying datums into workspace as needed */
	indatums = func->datums;
	outdatums = estate->datums;
	for (i = 0; i < ndatums; i++)
	{
		PLpgSQL_datum *indatum = indatums[i];
		PLpgSQL_datum *outdatum;

		/* This must agree with plpgsql_finish_datums on what is copiable */
		switch (indatum->dtype)
		{
			case PLPGSQL_DTYPE_VAR:
			case PLPGSQL_DTYPE_PROMISE:
				outdatum = (PLpgSQL_datum *) ws_next;
				FUNC3(outdatum, indatum, sizeof(PLpgSQL_var));
				ws_next += FUNC1(sizeof(PLpgSQL_var));
				break;

			case PLPGSQL_DTYPE_REC:
				outdatum = (PLpgSQL_datum *) ws_next;
				FUNC3(outdatum, indatum, sizeof(PLpgSQL_rec));
				ws_next += FUNC1(sizeof(PLpgSQL_rec));
				break;

			case PLPGSQL_DTYPE_ROW:
			case PLPGSQL_DTYPE_RECFIELD:
			case PLPGSQL_DTYPE_ARRAYELEM:

				/*
				 * These datum records are read-only at runtime, so no need to
				 * copy them (well, RECFIELD and ARRAYELEM contain cached
				 * data, but we'd just as soon centralize the caching anyway).
				 */
				outdatum = indatum;
				break;

			default:
				FUNC2(ERROR, "unrecognized dtype: %d", indatum->dtype);
				outdatum = NULL;	/* keep compiler quiet */
				break;
		}

		outdatums[i] = outdatum;
	}

	FUNC0(ws_next == workspace + func->copiable_size);
}