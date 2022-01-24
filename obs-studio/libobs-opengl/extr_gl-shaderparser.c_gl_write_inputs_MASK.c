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
struct shader_func {TYPE_1__ params; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_parser*,scalar_t__,int,char*) ; 

__attribute__((used)) static inline void FUNC2(struct gl_shader_parser *glsp,
				   struct shader_func *main)
{
	size_t i;
	for (i = 0; i < main->params.num; i++)
		FUNC1(glsp, main->params.array + i, true,
				     "inputval_");
	FUNC0(&glsp->gl_string, "\n");
}