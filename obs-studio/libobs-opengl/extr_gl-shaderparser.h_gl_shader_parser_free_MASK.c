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
struct gl_shader_parser {int /*<<< orphan*/  parser; int /*<<< orphan*/  gl_string; TYPE_1__ texture_samplers; TYPE_1__ attribs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct gl_shader_parser *glsp)
{
	size_t i;
	for (i = 0; i < glsp->attribs.num; i++)
		FUNC2(glsp->attribs.array + i);

	FUNC0(glsp->attribs);
	FUNC0(glsp->texture_samplers);
	FUNC1(&glsp->gl_string);
	FUNC3(&glsp->parser);
}