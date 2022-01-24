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
struct effect_parser {int /*<<< orphan*/  cfp; int /*<<< orphan*/ * cur_pass; int /*<<< orphan*/  tokens; int /*<<< orphan*/  files; int /*<<< orphan*/  techniques; int /*<<< orphan*/  samplers; int /*<<< orphan*/  funcs; int /*<<< orphan*/  structs; int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct effect_parser *ep)
{
	FUNC1(ep->params);
	FUNC1(ep->structs);
	FUNC1(ep->funcs);
	FUNC1(ep->samplers);
	FUNC1(ep->techniques);
	FUNC1(ep->files);
	FUNC1(ep->tokens);

	ep->cur_pass = NULL;
	FUNC0(&ep->cfp);
}