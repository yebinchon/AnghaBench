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
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC4(List *operatorName,
			   Oid leftObjectId,
			   Oid rightObjectId,
			   bool *defined)
{
	Oid			operatorObjectId;
	RegProcedure oprcode;

	operatorObjectId = FUNC0(NULL, operatorName,
									  leftObjectId, rightObjectId,
									  true, -1);
	if (!FUNC1(operatorObjectId))
	{
		*defined = false;
		return InvalidOid;
	}

	oprcode = FUNC3(operatorObjectId);
	*defined = FUNC2(oprcode);

	return operatorObjectId;
}