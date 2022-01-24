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
struct m_config_option {int /*<<< orphan*/  data; int /*<<< orphan*/  opt; } ;
struct m_config {int dummy; } ;

/* Variables and functions */
 int M_OPT_UNKNOWN ; 
 int M_SETOPT_FROM_CMDLINE ; 
 int FUNC0 (struct m_config*,struct m_config_option*,int) ; 
 int FUNC1 (struct m_config*,struct m_config_option*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct m_config_option*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct m_config*,struct m_config_option*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int FUNC5(struct m_config *config,
                                   struct m_config_option *co,
                                   void *data, int flags)
{
    if (!co)
        return M_OPT_UNKNOWN;

    int r = FUNC0(config, co, flags);
    if (r <= 1)
        return r;

    r = FUNC1(config, co, data, flags);
    if (r != M_OPT_UNKNOWN)
        return r;

    // This affects some special options like "playlist", "v". Maybe these
    // should work, or maybe not. For now they would require special code.
    if (!co->data)
        return flags & M_SETOPT_FROM_CMDLINE ? 0 : M_OPT_UNKNOWN;

    FUNC4(co->opt, co->data, data);

    FUNC2(co, flags);
    FUNC3(config, co);

    return 0;
}