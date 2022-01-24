#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16 ;
struct TYPE_14__ {TYPE_1__* result; int /*<<< orphan*/  copy_is_binary; } ;
struct TYPE_13__ {int format; } ;
struct TYPE_12__ {int numAttributes; TYPE_2__* attDescs; int /*<<< orphan*/  binary; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGresAttDesc ;
typedef  TYPE_3__ PGconn ;
typedef  int /*<<< orphan*/  ExecStatusType ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,int,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int
FUNC6(PGconn *conn, ExecStatusType copytype)
{
	PGresult   *result;
	int			nfields;
	int			i;

	result = FUNC2(conn, copytype);
	if (!result)
		goto failure;

	if (FUNC4(&conn->copy_is_binary, conn))
		goto failure;
	result->binary = conn->copy_is_binary;
	/* the next two bytes are the number of fields	*/
	if (FUNC3(&(result->numAttributes), 2, conn))
		goto failure;
	nfields = result->numAttributes;

	/* allocate space for the attribute descriptors */
	if (nfields > 0)
	{
		result->attDescs = (PGresAttDesc *)
			FUNC5(result, nfields * sizeof(PGresAttDesc), true);
		if (!result->attDescs)
			goto failure;
		FUNC0(result->attDescs, 0, nfields * sizeof(PGresAttDesc));
	}

	for (i = 0; i < nfields; i++)
	{
		int			format;

		if (FUNC3(&format, 2, conn))
			goto failure;

		/*
		 * Since pqGetInt treats 2-byte integers as unsigned, we need to
		 * coerce these results to signed form.
		 */
		format = (int) ((int16) format);
		result->attDescs[i].format = format;
	}

	/* Success! */
	conn->result = result;
	return 0;

failure:
	FUNC1(result);
	return EOF;
}