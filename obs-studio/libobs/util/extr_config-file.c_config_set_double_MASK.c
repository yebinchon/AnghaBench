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
struct TYPE_4__ {int /*<<< orphan*/  sections; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (double,char*,int) ; 

void FUNC3(config_t *config, const char *section, const char *name,
		       double value)
{
	char *str = FUNC0(64);
	FUNC2(value, str, 64);
	FUNC1(config, &config->sections, section, name, str);
}