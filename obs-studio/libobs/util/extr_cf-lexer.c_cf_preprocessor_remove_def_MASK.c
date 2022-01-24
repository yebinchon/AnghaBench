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
struct strref {char const* array; int /*<<< orphan*/  len; } ;
struct cf_preprocessor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_preprocessor*,struct strref*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

void FUNC2(struct cf_preprocessor *pp,
				const char *def_name)
{
	struct strref ref;
	ref.array = def_name;
	ref.len = FUNC1(def_name);
	FUNC0(pp, &ref);
}