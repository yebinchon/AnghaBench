#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dstr {int /*<<< orphan*/  array; } ;
struct TYPE_4__ {int /*<<< orphan*/  defaults; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,double) ; 

void FUNC3(config_t *config, const char *section,
			       const char *name, double value)
{
	struct dstr str;
	FUNC1(&str);
	FUNC2(&str, "%g", value);
	FUNC0(config, &config->defaults, section, name, str.array);
}