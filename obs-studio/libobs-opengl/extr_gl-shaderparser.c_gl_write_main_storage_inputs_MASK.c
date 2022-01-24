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
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct shader_func {TYPE_1__ params; } ;
struct gl_shader_parser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_shader_parser*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static inline void FUNC1(struct gl_shader_parser *glsp,
						struct shader_func *main)
{
	FUNC0(glsp, main->params.array, NULL,
				     "inputval_", true);
}