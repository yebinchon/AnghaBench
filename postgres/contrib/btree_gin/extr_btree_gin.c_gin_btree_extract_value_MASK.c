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
typedef  int int32 ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static Datum
FUNC6(FunctionCallInfo fcinfo, bool is_varlena)
{
	Datum		datum = FUNC1(0);
	int32	   *nentries = (int32 *) FUNC2(1);
	Datum	   *entries = (Datum *) FUNC5(sizeof(Datum));

	if (is_varlena)
		datum = FUNC4(FUNC0(datum));
	entries[0] = datum;
	*nentries = 1;

	FUNC3(entries);
}