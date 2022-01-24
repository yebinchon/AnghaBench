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
struct section {int dummy; } ;
struct config_option {int flags; char const* value; } ;
struct config {int dummy; } ;

/* Variables and functions */
 int CONFIG_VALUE_CHANGED ; 
 int CONFIG_VALUE_LOADED ; 
 int CONFIG_VALUE_USED ; 
 int /*<<< orphan*/  D_CONFIG ; 
 struct config_option* FUNC0 (struct section*,char const*,int /*<<< orphan*/ ) ; 
 struct section* FUNC1 (struct config*,char const*) ; 
 char const* FUNC2 (struct config*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 char const* FUNC6 (char const*) ; 

const char *FUNC7(struct config *root, const char *section, const char *name, const char *value)
{
    struct config_option *cv;

    FUNC3(D_CONFIG, "request to set default config in section '%s', name '%s', value '%s'", section, name, value);

    struct section *co = FUNC1(root, section);
    if(!co) return FUNC2(root, section, name, value);

    cv = FUNC0(co, name, 0);
    if(!cv) return FUNC2(root, section, name, value);

    cv->flags |= CONFIG_VALUE_USED;

    if(cv->flags & CONFIG_VALUE_LOADED)
        return cv->value;

    if(FUNC5(cv->value, value) != 0) {
        cv->flags |= CONFIG_VALUE_CHANGED;

        FUNC4(cv->value);
        cv->value = FUNC6(value);
    }

    return cv->value;
}