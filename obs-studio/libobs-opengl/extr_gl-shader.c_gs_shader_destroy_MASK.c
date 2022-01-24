#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t num; int /*<<< orphan*/ * array; } ;
struct TYPE_6__ {TYPE_4__ attribs; TYPE_4__ params; TYPE_4__ samplers; scalar_t__ obj; } ;
typedef  TYPE_1__ gs_shader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(gs_shader_t *shader)
{
	size_t i;

	if (!shader)
		return;

	FUNC5(shader);

	for (i = 0; i < shader->attribs.num; i++)
		FUNC6(shader->attribs.array + i);

	for (i = 0; i < shader->samplers.num; i++)
		FUNC4(shader->samplers.array[i]);

	for (i = 0; i < shader->params.num; i++)
		FUNC7(shader->params.array + i);

	if (shader->obj) {
		FUNC2(shader->obj);
		FUNC3("glDeleteShader");
	}

	FUNC1(shader->samplers);
	FUNC1(shader->params);
	FUNC1(shader->attribs);
	FUNC0(shader);
}