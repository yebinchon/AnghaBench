#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct varlena {int dummy; } ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_3__ {int /*<<< orphan*/  pageno; int /*<<< orphan*/  loid; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* Form_pg_largeobject ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int LOBLKSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(Form_pg_largeobject tuple,
			 bytea **pdatafield,
			 int *plen,
			 bool *pfreeit)
{
	bytea	   *datafield;
	int			len;
	bool		freeit;

	datafield = &(tuple->data); /* see note at top of file */
	freeit = false;
	if (FUNC0(datafield))
	{
		datafield = (bytea *)
			FUNC2((struct varlena *) datafield);
		freeit = true;
	}
	len = FUNC1(datafield) - VARHDRSZ;
	if (len < 0 || len > LOBLKSIZE)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_DATA_CORRUPTED),
				 FUNC5("pg_largeobject entry for OID %u, page %d has invalid data field size %d",
						tuple->loid, tuple->pageno, len)));
	*pdatafield = datafield;
	*plen = len;
	*pfreeit = freeit;
}