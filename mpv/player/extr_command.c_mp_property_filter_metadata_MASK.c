#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_tags {int dummy; } ;
struct mp_output_chain {int dummy; } ;
struct mp_filter_command {struct mp_tags** res; int /*<<< orphan*/  type; } ;
struct m_property_action_arg {char* key; int action; struct m_property_action_arg* arg; } ;
struct m_property {char* priv; } ;
typedef  int /*<<< orphan*/  bstr ;
struct TYPE_6__ {TYPE_2__* ao_chain; TYPE_1__* vo_chain; } ;
struct TYPE_5__ {struct mp_output_chain* filter; } ;
struct TYPE_4__ {struct mp_output_chain* filter; } ;
typedef  TYPE_3__ MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_FILTER_COMMAND_GET_META ; 
 int M_PROPERTY_ERROR ; 
 int M_PROPERTY_GET_TYPE ; 
 int M_PROPERTY_KEY_ACTION ; 
 int M_PROPERTY_NOT_IMPLEMENTED ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_output_chain*,int /*<<< orphan*/ ,struct mp_filter_command*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (int,struct m_property_action_arg*,struct mp_tags*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_tags*) ; 

__attribute__((used)) static int FUNC8(void *ctx, struct m_property *prop,
                                       int action, void *arg)
{
    MPContext *mpctx = ctx;
    const char *type = prop->priv;

    if (action == M_PROPERTY_KEY_ACTION) {
        struct m_property_action_arg *ka = arg;
        bstr key;
        char *rem;
        FUNC1(ka->key, &key, &rem);
        struct mp_tags *metadata = NULL;
        struct mp_output_chain *chain = NULL;
        if (FUNC4(type, "vf") == 0) {
            chain = mpctx->vo_chain ? mpctx->vo_chain->filter : NULL;
        } else if (FUNC4(type, "af") == 0) {
            chain = mpctx->ao_chain ? mpctx->ao_chain->filter : NULL;
        }
        if (!chain)
            return M_PROPERTY_UNAVAILABLE;

        if (ka->action != M_PROPERTY_GET_TYPE) {
            struct mp_filter_command cmd = {
                .type = MP_FILTER_COMMAND_GET_META,
                .res = &metadata,
            };
            FUNC2(chain, FUNC3(80, "%.*s", FUNC0(key)),
                                    &cmd);

            if (!metadata)
                return M_PROPERTY_ERROR;
        }

        int res;
        if (FUNC5(rem)) {
            struct m_property_action_arg next_ka = *ka;
            next_ka.key = rem;
            res = FUNC6(M_PROPERTY_KEY_ACTION, &next_ka, metadata);
        } else {
            res = FUNC6(ka->action, ka->arg, metadata);
        }
        FUNC7(metadata);
        return res;
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}