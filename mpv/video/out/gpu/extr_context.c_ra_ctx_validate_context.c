
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct m_option {int dummy; } ;
struct bstr {int dummy; } ;
struct TYPE_3__ {char* name; int type; } ;


 int MP_ARRAY_SIZE (TYPE_1__**) ;
 int M_OPT_EXIT ;
 int M_OPT_INVALID ;
 scalar_t__ bstr_equals0 (struct bstr,char*) ;
 TYPE_1__** contexts ;
 int mp_info (struct mp_log*,char*,...) ;

int ra_ctx_validate_context(struct mp_log *log, const struct m_option *opt,
                            struct bstr name, struct bstr param)
{
    if (bstr_equals0(param, "help")) {
        mp_info(log, "GPU contexts (APIs):\n");
        mp_info(log, "    auto (autodetect)\n");
        for (int n = 0; n < MP_ARRAY_SIZE(contexts); n++)
            mp_info(log, "    %s (%s)\n", contexts[n]->name, contexts[n]->type);
        return M_OPT_EXIT;
    }
    if (bstr_equals0(param, "auto"))
        return 1;
    for (int i = 0; i < MP_ARRAY_SIZE(contexts); i++) {
        if (bstr_equals0(param, contexts[i]->name))
            return 1;
    }
    return M_OPT_INVALID;
}
