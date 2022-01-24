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
struct m_config_option {int /*<<< orphan*/  name; scalar_t__ is_hidden; } ;
struct m_config {int num_opts; struct m_config_option* opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char**,int,char*) ; 
 char** FUNC1 (void*) ; 
 char* FUNC2 (void*,int /*<<< orphan*/ ) ; 

char **FUNC3(void *ta_parent, const struct m_config *config)
{
    char **list = FUNC1(ta_parent);
    int count = 0;
    for (int i = 0; i < config->num_opts; i++) {
        struct m_config_option *co = &config->opts[i];
        if (co->is_hidden)
            continue;
        // For use with CONF_TYPE_STRING_LIST, it's important not to set list
        // as allocation parent.
        char *s = FUNC2(ta_parent, co->name);
        FUNC0(ta_parent, list, count, s);
    }
    FUNC0(ta_parent, list, count, NULL);
    return list;
}