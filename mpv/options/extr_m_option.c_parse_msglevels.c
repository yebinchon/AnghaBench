
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct bstr {int dummy; } ;
typedef int m_option_t ;
struct TYPE_2__ {int (* parse ) (struct mp_log*,int const*,struct bstr,struct bstr,char***) ;int (* free ) (char***) ;int (* copy ) (int const*,void*,char***) ;} ;


 int M_OPT_EXIT ;
 scalar_t__ bstr_equals0 (struct bstr,char*) ;
 int check_msg_levels (struct mp_log*,char**) ;
 TYPE_1__ m_option_type_keyvalue_list ;
 int mp_info (struct mp_log*,char*) ;
 int stub1 (struct mp_log*,int const*,struct bstr,struct bstr,char***) ;
 int stub2 (int const*,void*,char***) ;
 int stub3 (char***) ;

__attribute__((used)) static int parse_msglevels(struct mp_log *log, const m_option_t *opt,
                           struct bstr name, struct bstr param, void *dst)
{
    if (bstr_equals0(param, "help")) {
        mp_info(log, "Syntax:\n\n   --msglevel=module1=level,module2=level,...\n\n"
                     "'module' is output prefix as shown with -v, or a prefix\n"
                     "of it. level is one of:\n\n"
                     "  fatal error warn info status v debug trace\n\n"
                     "The level specifies the minimum log level a message\n"
                     "must have to be printed.\n"
                     "The special module name 'all' affects all modules.\n");
        return M_OPT_EXIT;
    }

    char **dst_copy = ((void*)0);
    int r = m_option_type_keyvalue_list.parse(log, opt, name, param, &dst_copy);
    if (r >= 0)
        r = check_msg_levels(log, dst_copy);

    if (r >= 0)
        m_option_type_keyvalue_list.copy(opt, dst, &dst_copy);
    m_option_type_keyvalue_list.free(&dst_copy);
    return r;
}
