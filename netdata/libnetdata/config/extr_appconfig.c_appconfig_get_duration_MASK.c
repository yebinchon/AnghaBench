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
struct config {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct config*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*) ; 

int FUNC3(struct config *root, const char *section, const char *name, const char *value)
{
    int result = 0;
    const char *s;

    s = FUNC0(root, section, name, value);
    if(!s) goto fallback;

    if(!FUNC1(s, &result)) {
        FUNC2("config option '[%s].%s = %s' is configured with an valid duration", section, name, s);
        goto fallback;
    }

    return result;

    fallback:
    if(!FUNC1(value, &result))
        FUNC2("INTERNAL ERROR: default duration supplied for option '[%s].%s = %s' is not a valid duration", section, name, value);

    return result;
}