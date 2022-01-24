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
typedef  int /*<<< orphan*/  SIMPLE_PATTERN ;

/* Variables and functions */
 char* FUNC0 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int FUNC4(const char *section_name, const char *config_name, const char *default_value, SIMPLE_PATTERN *p)
{
    char *value = FUNC0(section_name,config_name,default_value);
    if(!FUNC3("yes",value))
        return 1;
    if(!FUNC3("no",value))
        return 0;
    if(FUNC3("heuristic",value))
        FUNC1("Invalid configuration option '%s' for '%s'/'%s'. Valid options are 'yes', 'no' and 'heuristic'. Proceeding with 'heuristic'",
              value, section_name, config_name);
    return FUNC2(p);
}