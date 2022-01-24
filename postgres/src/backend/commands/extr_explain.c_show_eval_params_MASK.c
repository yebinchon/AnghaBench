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
typedef  int /*<<< orphan*/  param ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ExplainState ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC6(Bitmapset *bms_params, ExplainState *es)
{
	int			paramid = -1;
	List	   *params = NIL;

	FUNC0(bms_params);

	while ((paramid = FUNC2(bms_params, paramid)) >= 0)
	{
		char		param[32];

		FUNC5(param, sizeof(param), "$%d", paramid);
		params = FUNC3(params, FUNC4(param));
	}

	if (params)
		FUNC1("Params Evaluated", params, es);
}