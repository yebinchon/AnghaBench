#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct m_property {char* name; } ;
struct m_option {int dummy; } ;
struct m_config_option {int /*<<< orphan*/  data; struct m_option* opt; } ;
struct TYPE_4__ {int /*<<< orphan*/  mconfig; TYPE_1__* command_ctx; } ;
struct TYPE_3__ {scalar_t__ silence_option_deprecations; } ;
typedef  TYPE_2__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_ERROR ; 
#define  M_PROPERTY_GET 130 
#define  M_PROPERTY_GET_TYPE 129 
 int M_PROPERTY_NOT_IMPLEMENTED ; 
 int M_PROPERTY_OK ; 
#define  M_PROPERTY_SET 128 
 int M_PROPERTY_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct m_config_option* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct m_config_option* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct m_config_option*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct m_option*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    const char *optname = prop->name;
    struct m_config_option *opt;
    if (mpctx->command_ctx->silence_option_deprecations) {
        // This case is specifically for making --reset-on-next-file=all silent.
        opt = FUNC2(mpctx->mconfig, FUNC0(optname));
    } else {
        opt = FUNC1(mpctx->mconfig, FUNC0(optname));
    }

    if (!opt)
        return M_PROPERTY_UNKNOWN;

    switch (action) {
    case M_PROPERTY_GET_TYPE:
        *(struct m_option *)arg = *(opt->opt);
        return M_PROPERTY_OK;
    case M_PROPERTY_GET:
        if (!opt->data)
            return M_PROPERTY_NOT_IMPLEMENTED;
        FUNC4(opt->opt, arg, opt->data);
        return M_PROPERTY_OK;
    case M_PROPERTY_SET:
        if (FUNC3(mpctx->mconfig, opt, arg, 0) < 0)
            return M_PROPERTY_ERROR;
        return M_PROPERTY_OK;
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}