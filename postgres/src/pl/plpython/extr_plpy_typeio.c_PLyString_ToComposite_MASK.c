#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_8__ {TYPE_4__ recinfunc; } ;
struct TYPE_7__ {TYPE_2__ tuple; } ;
struct TYPE_9__ {int /*<<< orphan*/  typmod; int /*<<< orphan*/  typoid; TYPE_1__ u; int /*<<< orphan*/  mcxt; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ PLyObToDatum ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_RECORD_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned char) ; 

__attribute__((used)) static Datum
FUNC10(PLyObToDatum *arg, PyObject *string, bool inarray)
{
	char	   *str;

	/*
	 * Set up call data for record_in, if we didn't already.  (We can't just
	 * use DirectFunctionCall, because record_in needs a fn_extra field.)
	 */
	if (!FUNC1(arg->u.tuple.recinfunc.fn_oid))
		FUNC8(F_RECORD_IN, &arg->u.tuple.recinfunc, arg->mcxt);

	str = FUNC2(string);

	/*
	 * If we are parsing a composite type within an array, and the string
	 * isn't a valid record literal, there's a high chance that the function
	 * did something like:
	 *
	 * CREATE FUNCTION .. RETURNS comptype[] AS $$ return [['foo', 'bar']] $$
	 * LANGUAGE plpython;
	 *
	 * Before PostgreSQL 10, that was interpreted as a single-dimensional
	 * array, containing record ('foo', 'bar'). PostgreSQL 10 added support
	 * for multi-dimensional arrays, and it is now interpreted as a
	 * two-dimensional array, containing two records, 'foo', and 'bar'.
	 * record_in() will throw an error, because "foo" is not a valid record
	 * literal.
	 *
	 * To make that less confusing to users who are upgrading from older
	 * versions, try to give a hint in the typical instances of that. If we
	 * are parsing an array of composite types, and we see a string literal
	 * that is not a valid record literal, give a hint. We only want to give
	 * the hint in the narrow case of a malformed string literal, not any
	 * error from record_in(), so check for that case here specifically.
	 *
	 * This check better match the one in record_in(), so that we don't forbid
	 * literals that are actually valid!
	 */
	if (inarray)
	{
		char	   *ptr = str;

		/* Allow leading whitespace */
		while (*ptr && FUNC9((unsigned char) *ptr))
			ptr++;
		if (*ptr++ != '(')
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC7("malformed record literal: \"%s\"", str),
					 FUNC5("Missing left parenthesis."),
					 FUNC6("To return a composite type in an array, return the composite type as a Python tuple, e.g., \"[('foo',)]\".")));
	}

	return FUNC0(&arg->u.tuple.recinfunc,
							 str,
							 arg->typoid,
							 arg->typmod);
}