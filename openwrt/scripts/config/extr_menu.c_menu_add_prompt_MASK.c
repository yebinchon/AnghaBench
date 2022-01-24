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
struct property {int dummy; } ;
struct expr {int dummy; } ;
typedef  enum prop_type { ____Placeholder_prop_type } prop_type ;

/* Variables and functions */
 struct property* FUNC0 (int,char*,int /*<<< orphan*/ *,struct expr*) ; 

struct property *FUNC1(enum prop_type type, char *prompt, struct expr *dep)
{
	return FUNC0(type, prompt, NULL, dep);
}