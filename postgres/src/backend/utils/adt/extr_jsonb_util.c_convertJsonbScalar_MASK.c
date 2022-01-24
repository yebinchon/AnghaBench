#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tz; int /*<<< orphan*/  typid; int /*<<< orphan*/  value; } ;
struct TYPE_6__ {char* val; size_t len; } ;
struct TYPE_8__ {TYPE_2__ datetime; int /*<<< orphan*/  boolean; scalar_t__ numeric; TYPE_1__ string; } ;
struct TYPE_9__ {int type; TYPE_3__ val; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_4__ JsonbValue ;
typedef  int JEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int JENTRY_ISBOOL_FALSE ; 
 int JENTRY_ISBOOL_TRUE ; 
 int JENTRY_ISNULL ; 
 short JENTRY_ISNUMERIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXDATELEN ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
#define  jbvBool 132 
#define  jbvDatetime 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 short FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(StringInfo buffer, JEntry *jentry, JsonbValue *scalarVal)
{
	int			numlen;
	short		padlen;

	switch (scalarVal->type)
	{
		case jbvNull:
			*jentry = JENTRY_ISNULL;
			break;

		case jbvString:
			FUNC2(buffer, scalarVal->val.string.val, scalarVal->val.string.len);

			*jentry = scalarVal->val.string.len;
			break;

		case jbvNumeric:
			/* replace numeric NaN with string "NaN" */
			if (FUNC4(scalarVal->val.numeric))
			{
				FUNC2(buffer, "NaN", 3);
				*jentry = 3;
				break;
			}

			numlen = FUNC1(scalarVal->val.numeric);
			padlen = FUNC5(buffer);

			FUNC2(buffer, (char *) scalarVal->val.numeric, numlen);

			*jentry = JENTRY_ISNUMERIC | (padlen + numlen);
			break;

		case jbvBool:
			*jentry = (scalarVal->val.boolean) ?
				JENTRY_ISBOOL_TRUE : JENTRY_ISBOOL_FALSE;
			break;

		case jbvDatetime:
			{
				char		buf[MAXDATELEN + 1];
				size_t		len;

				FUNC0(buf,
								   scalarVal->val.datetime.value,
								   scalarVal->val.datetime.typid,
								   &scalarVal->val.datetime.tz);
				len = FUNC6(buf);
				FUNC2(buffer, buf, len);

				*jentry = len;
			}
			break;

		default:
			FUNC3(ERROR, "invalid jsonb scalar type");
	}
}