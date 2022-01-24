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
typedef  int RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY ;

/* Variables and functions */
#define  RRDPUSH_MULTIPLE_CONNECTIONS_ALLOW 129 
#define  RRDPUSH_MULTIPLE_CONNECTIONS_DENY_NEW 128 
 char* FUNC0 (struct config*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY FUNC3(struct config *c, const char *section, const char *name, RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY def) {
    char *value;
    switch(def) {
        default:
        case RRDPUSH_MULTIPLE_CONNECTIONS_ALLOW:
            value = "allow";
            break;

        case RRDPUSH_MULTIPLE_CONNECTIONS_DENY_NEW:
            value = "deny";
            break;
    }

    value = FUNC0(c, section, name, value);

    RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY ret = def;

    if(FUNC2(value, "allow") == 0 || FUNC2(value, "permit") == 0 || FUNC2(value, "accept") == 0)
        ret = RRDPUSH_MULTIPLE_CONNECTIONS_ALLOW;

    else if(FUNC2(value, "deny") == 0 || FUNC2(value, "reject") == 0 || FUNC2(value, "block") == 0)
        ret = RRDPUSH_MULTIPLE_CONNECTIONS_DENY_NEW;

    else
        FUNC1("Invalid stream config value at section [%s], setting '%s', value '%s'", section, name, value);

    return ret;
}