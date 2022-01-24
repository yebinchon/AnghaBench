#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct m_property_action_arg {int action; scalar_t__ arg; int /*<<< orphan*/  key; } ;
struct m_option {int dummy; } ;
struct m_config_option {struct m_option* opt; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  mconfig; int /*<<< orphan*/  playing; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_ERROR ; 
#define  M_PROPERTY_GET 130 
#define  M_PROPERTY_GET_TYPE 129 
 int M_PROPERTY_NOT_IMPLEMENTED ; 
 int M_PROPERTY_OK ; 
#define  M_PROPERTY_SET 128 
 int M_PROPERTY_UNAVAILABLE ; 
 int M_PROPERTY_UNKNOWN ; 
 int M_SETOPT_BACKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct m_config_option* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct m_config_option*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct m_option*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct m_property_action_arg *ka, bool local,
                          MPContext *mpctx)
{
    struct m_config_option *opt = FUNC1(mpctx->mconfig,
                                                  FUNC0(ka->key));
    if (!opt)
        return M_PROPERTY_UNKNOWN;
    if (!opt->data)
        return M_PROPERTY_UNAVAILABLE;

    switch (ka->action) {
    case M_PROPERTY_GET:
        FUNC3(opt->opt, ka->arg, opt->data);
        return M_PROPERTY_OK;
    case M_PROPERTY_SET: {
        if (local && !mpctx->playing)
            return M_PROPERTY_ERROR;
        int flags = local ? M_SETOPT_BACKUP : 0;
        int r = FUNC2(mpctx->mconfig, opt, ka->arg, flags);
        FUNC4(mpctx);
        return r < 0 ? M_PROPERTY_ERROR : M_PROPERTY_OK;
    }
    case M_PROPERTY_GET_TYPE:
        *(struct m_option *)ka->arg = *opt->opt;
        return M_PROPERTY_OK;
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}