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
struct symbol {int dummy; } ;
struct expr {int dummy; } ;
typedef  enum prop_type { ____Placeholder_prop_type } prop_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct expr*) ; 

void FUNC2(enum prop_type type, struct symbol *sym, struct expr *dep)
{
	FUNC1(type, NULL, FUNC0(sym), dep);
}