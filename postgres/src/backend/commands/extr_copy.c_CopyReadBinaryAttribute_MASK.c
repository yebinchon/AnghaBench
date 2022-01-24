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
typedef  int int32 ;
struct TYPE_9__ {char* data; int len; int cursor; } ;
struct TYPE_8__ {TYPE_2__ attribute_buf; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  ERRCODE_BAD_COPY_FILE_FORMAT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_BINARY_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static Datum
FUNC8(CopyState cstate,
						int column_no, FmgrInfo *flinfo,
						Oid typioparam, int32 typmod,
						bool *isnull)
{
	int32		fld_size;
	Datum		result;

	if (!FUNC1(cstate, &fld_size))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_BAD_COPY_FILE_FORMAT),
				 FUNC6("unexpected EOF in COPY data")));
	if (fld_size == -1)
	{
		*isnull = true;
		return FUNC2(flinfo, NULL, typioparam, typmod);
	}
	if (fld_size < 0)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_BAD_COPY_FILE_FORMAT),
				 FUNC6("invalid field size")));

	/* reset attribute_buf to empty, and load raw data in it */
	FUNC7(&cstate->attribute_buf);

	FUNC3(&cstate->attribute_buf, fld_size);
	if (FUNC0(cstate, cstate->attribute_buf.data,
					fld_size, fld_size) != fld_size)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_BAD_COPY_FILE_FORMAT),
				 FUNC6("unexpected EOF in COPY data")));

	cstate->attribute_buf.len = fld_size;
	cstate->attribute_buf.data[fld_size] = '\0';

	/* Call the column type's binary input converter */
	result = FUNC2(flinfo, &cstate->attribute_buf,
								 typioparam, typmod);

	/* Trouble if it didn't eat the whole buffer */
	if (cstate->attribute_buf.cursor != cstate->attribute_buf.len)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_BINARY_REPRESENTATION),
				 FUNC6("incorrect binary data format")));

	*isnull = false;
	return result;
}