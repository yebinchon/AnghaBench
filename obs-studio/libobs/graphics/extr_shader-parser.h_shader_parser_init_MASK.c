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
struct shader_parser {int /*<<< orphan*/  funcs; int /*<<< orphan*/  samplers; int /*<<< orphan*/  structs; int /*<<< orphan*/  params; int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct shader_parser *sp)
{
	FUNC0(&sp->cfp);

	FUNC1(sp->params);
	FUNC1(sp->structs);
	FUNC1(sp->samplers);
	FUNC1(sp->funcs);
}