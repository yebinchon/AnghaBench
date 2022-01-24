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
struct shader_parser {TYPE_1__ funcs; TYPE_1__ samplers; TYPE_1__ structs; TYPE_1__ params; int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC6(struct shader_parser *sp)
{
	size_t i;

	for (i = 0; i < sp->params.num; i++)
		FUNC5(sp->params.array + i);
	for (i = 0; i < sp->structs.num; i++)
		FUNC4(sp->structs.array + i);
	for (i = 0; i < sp->samplers.num; i++)
		FUNC3(sp->samplers.array + i);
	for (i = 0; i < sp->funcs.num; i++)
		FUNC2(sp->funcs.array + i);

	FUNC0(&sp->cfp);
	FUNC1(sp->params);
	FUNC1(sp->structs);
	FUNC1(sp->samplers);
	FUNC1(sp->funcs);
}