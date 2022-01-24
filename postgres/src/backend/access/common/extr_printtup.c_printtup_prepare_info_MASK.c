#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_11__ {int nattrs; TYPE_2__* myinfo; int /*<<< orphan*/  attrinfo; TYPE_1__* portal; } ;
struct TYPE_10__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_9__ {int format; int /*<<< orphan*/  finfo; int /*<<< orphan*/  typsend; int /*<<< orphan*/  typisvarlena; int /*<<< orphan*/  typoutput; } ;
struct TYPE_8__ {int* formats; } ;
typedef  TYPE_2__ PrinttupAttrInfo ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  TYPE_4__ DR_printtup ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(DR_printtup *myState, TupleDesc typeinfo, int numAttrs)
{
	int16	   *formats = myState->portal->formats;
	int			i;

	/* get rid of any old data */
	if (myState->myinfo)
		FUNC8(myState->myinfo);
	myState->myinfo = NULL;

	myState->attrinfo = typeinfo;
	myState->nattrs = numAttrs;
	if (numAttrs <= 0)
		return;

	myState->myinfo = (PrinttupAttrInfo *)
		FUNC7(numAttrs * sizeof(PrinttupAttrInfo));

	for (i = 0; i < numAttrs; i++)
	{
		PrinttupAttrInfo *thisState = myState->myinfo + i;
		int16		format = (formats ? formats[i] : 0);
		Form_pg_attribute attr = FUNC0(typeinfo, i);

		thisState->format = format;
		if (format == 0)
		{
			FUNC6(attr->atttypid,
							  &thisState->typoutput,
							  &thisState->typisvarlena);
			FUNC4(thisState->typoutput, &thisState->finfo);
		}
		else if (format == 1)
		{
			FUNC5(attr->atttypid,
									&thisState->typsend,
									&thisState->typisvarlena);
			FUNC4(thisState->typsend, &thisState->finfo);
		}
		else
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC3("unsupported format code: %d", format)));
	}
}