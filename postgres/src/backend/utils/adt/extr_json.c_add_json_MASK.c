#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  JsonTypeCategory ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  JSONTYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static void
FUNC5(Datum val, bool is_null, StringInfo result,
		 Oid val_type, bool key_scalar)
{
	JsonTypeCategory tcategory;
	Oid			outfuncoid;

	if (val_type == InvalidOid)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("could not determine input data type")));

	if (is_null)
	{
		tcategory = JSONTYPE_NULL;
		outfuncoid = InvalidOid;
	}
	else
		FUNC4(val_type,
							 &tcategory, &outfuncoid);

	FUNC0(val, is_null, result, tcategory, outfuncoid, key_scalar);
}