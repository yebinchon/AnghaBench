#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct m_config_option {int warning_was_printed; TYPE_1__* opt; int /*<<< orphan*/  name; } ;
struct m_config {scalar_t__ is_toplevel; } ;
struct bstr {int dummy; } ;
struct TYPE_2__ {char* priv; scalar_t__* deprecation_message; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_config const*,char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct m_config const*,char*,char const*,int /*<<< orphan*/ ,char const*,...) ; 
 struct bstr FUNC2 (char const*) ; 
 struct m_config_option* FUNC3 (struct m_config const*,struct bstr) ; 
 int /*<<< orphan*/  m_option_type_alias ; 
 int /*<<< orphan*/  m_option_type_removed ; 

__attribute__((used)) static struct m_config_option *FUNC4(const struct m_config *config,
                                                   struct bstr name)
{
    struct m_config_option *co = FUNC3(config, name);
    if (!co)
        return NULL;

    const char *prefix = config->is_toplevel ? "--" : "";
    if (co->opt->type == &m_option_type_alias) {
        const char *alias = (const char *)co->opt->priv;
        if (co->opt->deprecation_message && !co->warning_was_printed) {
            if (co->opt->deprecation_message[0]) {
                FUNC1(config, "Warning: option %s%s was replaced with "
                        "%s%s: %s\n", prefix, co->name, prefix, alias,
                        co->opt->deprecation_message);
            } else {
                FUNC1(config, "Warning: option %s%s was replaced with "
                        "%s%s and might be removed in the future.\n",
                        prefix, co->name, prefix, alias);
            }
            co->warning_was_printed = true;
        }
        return FUNC4(config, FUNC2(alias));
    } else if (co->opt->type == &m_option_type_removed) {
        if (!co->warning_was_printed) {
            char *msg = co->opt->priv;
            if (msg) {
                FUNC0(config, "Option %s%s was removed: %s\n",
                         prefix, co->name, msg);
            } else {
                FUNC0(config, "Option %s%s was removed.\n",
                         prefix, co->name);
            }
            co->warning_was_printed = true;
        }
        return NULL;
    } else if (co->opt->deprecation_message) {
        if (!co->warning_was_printed) {
            FUNC1(config, "Warning: option %s%s is deprecated "
                    "and might be removed in the future (%s).\n",
                    prefix, co->name, co->opt->deprecation_message);
            co->warning_was_printed = true;
        }
    }
    return co;
}