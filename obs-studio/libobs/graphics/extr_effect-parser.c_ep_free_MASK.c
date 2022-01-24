#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct effect_parser {TYPE_1__ techniques; TYPE_1__ samplers; TYPE_1__ funcs; TYPE_1__ structs; TYPE_1__ params; int /*<<< orphan*/  cfp; int /*<<< orphan*/ * cur_pass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(struct effect_parser *ep)
{
	size_t i;
	for (i = 0; i < ep->params.num; i++)
		FUNC3(ep->params.array + i);
	for (i = 0; i < ep->structs.num; i++)
		FUNC5(ep->structs.array + i);
	for (i = 0; i < ep->funcs.num; i++)
		FUNC2(ep->funcs.array + i);
	for (i = 0; i < ep->samplers.num; i++)
		FUNC4(ep->samplers.array + i);
	for (i = 0; i < ep->techniques.num; i++)
		FUNC6(ep->techniques.array + i);

	ep->cur_pass = NULL;
	FUNC0(&ep->cfp);
	FUNC1(ep->params);
	FUNC1(ep->structs);
	FUNC1(ep->funcs);
	FUNC1(ep->samplers);
	FUNC1(ep->techniques);
}