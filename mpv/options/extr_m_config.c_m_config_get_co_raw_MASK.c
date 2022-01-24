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
struct m_config_option {int /*<<< orphan*/  name; } ;
struct m_config {int num_opts; struct m_config_option* opts; } ;
struct bstr {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 struct bstr FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bstr,struct bstr) ; 

struct m_config_option *FUNC2(const struct m_config *config,
                                            struct bstr name)
{
    if (!name.len)
        return NULL;

    for (int n = 0; n < config->num_opts; n++) {
        struct m_config_option *co = &config->opts[n];
        struct bstr coname = FUNC0(co->name);
        if (FUNC1(coname, name) == 0)
            return co;
    }

    return NULL;
}