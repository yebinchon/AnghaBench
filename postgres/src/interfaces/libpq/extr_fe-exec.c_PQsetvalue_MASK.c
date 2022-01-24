#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int len; char* value; } ;
struct TYPE_8__ {int ntups; int numAttributes; char* null_field; int /*<<< orphan*/  noticeHooks; TYPE_2__** tuples; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGresAttValue ;

/* Variables and functions */
 int NULL_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int) ; 

int
FUNC6(PGresult *res, int tup_num, int field_num, char *value, int len)
{
	PGresAttValue *attval;
	const char *errmsg = NULL;

	/* Note that this check also protects us against null "res" */
	if (!FUNC0(res, field_num))
		return false;

	/* Invalid tup_num, must be <= ntups */
	if (tup_num < 0 || tup_num > res->ntups)
	{
		FUNC4(&res->noticeHooks,
						 "row number %d is out of range 0..%d",
						 tup_num, res->ntups);
		return false;
	}

	/* need to allocate a new tuple? */
	if (tup_num == res->ntups)
	{
		PGresAttValue *tup;
		int			i;

		tup = (PGresAttValue *)
			FUNC5(res, res->numAttributes * sizeof(PGresAttValue),
						  true);

		if (!tup)
			goto fail;

		/* initialize each column to NULL */
		for (i = 0; i < res->numAttributes; i++)
		{
			tup[i].len = NULL_LEN;
			tup[i].value = res->null_field;
		}

		/* add it to the array */
		if (!FUNC3(res, tup, &errmsg))
			goto fail;
	}

	attval = &res->tuples[tup_num][field_num];

	/* treat either NULL_LEN or NULL value pointer as a NULL field */
	if (len == NULL_LEN || value == NULL)
	{
		attval->len = NULL_LEN;
		attval->value = res->null_field;
	}
	else if (len <= 0)
	{
		attval->len = 0;
		attval->value = res->null_field;
	}
	else
	{
		attval->value = (char *) FUNC5(res, len + 1, true);
		if (!attval->value)
			goto fail;
		attval->len = len;
		FUNC2(attval->value, value, len);
		attval->value[len] = '\0';
	}

	return true;

	/*
	 * Report failure via pqInternalNotice.  If preceding code didn't provide
	 * an error message, assume "out of memory" was meant.
	 */
fail:
	if (!errmsg)
		errmsg = FUNC1("out of memory");
	FUNC4(&res->noticeHooks, "%s", errmsg);

	return false;
}