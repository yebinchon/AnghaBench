#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  rawScalar; } ;
struct TYPE_15__ {TYPE_1__ array; } ;
struct TYPE_17__ {TYPE_2__ val; } ;
struct TYPE_16__ {char* data; } ;
typedef  TYPE_3__* StringInfo ;
typedef  TYPE_4__ JsonbValue ;
typedef  int JsonbIteratorToken ;
typedef  int /*<<< orphan*/  JsonbIterator ;
typedef  int /*<<< orphan*/  JsonbContainer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,TYPE_4__*,int) ; 
#define  WJB_BEGIN_ARRAY 133 
#define  WJB_BEGIN_OBJECT 132 
 int WJB_DONE ; 
#define  WJB_ELEM 131 
#define  WJB_END_ARRAY 130 
#define  WJB_END_OBJECT 129 
#define  WJB_KEY 128 
 int WJB_VALUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_3__* FUNC9 () ; 

__attribute__((used)) static char *
FUNC10(StringInfo out, JsonbContainer *in, int estimated_len, bool indent)
{
	bool		first = true;
	JsonbIterator *it;
	JsonbValue	v;
	JsonbIteratorToken type = WJB_DONE;
	int			level = 0;
	bool		redo_switch = false;

	/* If we are indenting, don't add a space after a comma */
	int			ispaces = indent ? 1 : 2;

	/*
	 * Don't indent the very first item. This gets set to the indent flag at
	 * the bottom of the loop.
	 */
	bool		use_indent = false;
	bool		raw_scalar = false;
	bool		last_was_key = false;

	if (out == NULL)
		out = FUNC9();

	FUNC7(out, (estimated_len >= 0) ? estimated_len : 64);

	it = FUNC1(in);

	while (redo_switch ||
		   ((type = FUNC2(&it, &v, false)) != WJB_DONE))
	{
		redo_switch = false;
		switch (type)
		{
			case WJB_BEGIN_ARRAY:
				if (!first)
					FUNC4(out, ", ", ispaces);

				if (!v.val.array.rawScalar)
				{
					FUNC3(out, use_indent && !last_was_key, level);
					FUNC5(out, '[');
				}
				else
					raw_scalar = true;

				first = true;
				level++;
				break;
			case WJB_BEGIN_OBJECT:
				if (!first)
					FUNC4(out, ", ", ispaces);

				FUNC3(out, use_indent && !last_was_key, level);
				FUNC5(out, '{');

				first = true;
				level++;
				break;
			case WJB_KEY:
				if (!first)
					FUNC4(out, ", ", ispaces);
				first = true;

				FUNC3(out, use_indent, level);

				/* json rules guarantee this is a string */
				FUNC8(out, &v);
				FUNC4(out, ": ", 2);

				type = FUNC2(&it, &v, false);
				if (type == WJB_VALUE)
				{
					first = false;
					FUNC8(out, &v);
				}
				else
				{
					FUNC0(type == WJB_BEGIN_OBJECT || type == WJB_BEGIN_ARRAY);

					/*
					 * We need to rerun the current switch() since we need to
					 * output the object which we just got from the iterator
					 * before calling the iterator again.
					 */
					redo_switch = true;
				}
				break;
			case WJB_ELEM:
				if (!first)
					FUNC4(out, ", ", ispaces);
				first = false;

				if (!raw_scalar)
					FUNC3(out, use_indent, level);
				FUNC8(out, &v);
				break;
			case WJB_END_ARRAY:
				level--;
				if (!raw_scalar)
				{
					FUNC3(out, use_indent, level);
					FUNC5(out, ']');
				}
				first = false;
				break;
			case WJB_END_OBJECT:
				level--;
				FUNC3(out, use_indent, level);
				FUNC5(out, '}');
				first = false;
				break;
			default:
				FUNC6(ERROR, "unknown jsonb iterator token type");
		}
		use_indent = indent;
		last_was_key = redo_switch;
	}

	FUNC0(level == 0);

	return out->data;
}