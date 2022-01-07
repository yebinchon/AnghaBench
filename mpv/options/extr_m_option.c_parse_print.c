
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct bstr {int dummy; } ;
struct TYPE_3__ {scalar_t__ priv; } ;
typedef TYPE_1__ m_option_t ;
typedef int (* m_opt_print_fn ) (struct mp_log*) ;


 int M_OPT_EXIT ;
 int stub1 (struct mp_log*) ;

__attribute__((used)) static int parse_print(struct mp_log *log, const m_option_t *opt,
                       struct bstr name, struct bstr param, void *dst)
{
    ((m_opt_print_fn) opt->priv)(log);
    return M_OPT_EXIT;
}
