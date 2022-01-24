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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REGTYPEOID ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,char) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static Datum
FUNC4(Oid *param_types, int num_params)
{
	Datum	   *tmp_ary;
	ArrayType  *result;
	int			i;

	tmp_ary = (Datum *) FUNC3(num_params * sizeof(Datum));

	for (i = 0; i < num_params; i++)
		tmp_ary[i] = FUNC0(param_types[i]);

	/* XXX: this hardcodes assumptions about the regtype type */
	result = FUNC2(tmp_ary, num_params, REGTYPEOID, 4, true, 'i');
	return FUNC1(result);
}