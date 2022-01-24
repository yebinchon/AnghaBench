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
struct m_config_option {int /*<<< orphan*/  opt; } ;
struct m_config {int dummy; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int M_OPT_TYPE_OPTIONAL_PARAM ; 
 int M_OPT_UNKNOWN ; 
 struct m_config_option* FUNC0 (struct m_config*,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct m_config *config, bstr name)
{
    bool negate;
    int flags;
    struct m_config_option *co =
        FUNC0(config, &name, &negate, &flags);

    if (!co)
        return M_OPT_UNKNOWN;

    if (negate || (flags & M_OPT_TYPE_OPTIONAL_PARAM))
        return 0;

    return FUNC1(co->opt);
}