
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct bstr {int dummy; } ;
typedef int m_option_t ;


 int M_OPT_INVALID ;
 int mp_err (struct mp_log*,char*) ;

__attribute__((used)) static int parse_node(struct mp_log *log, const m_option_t *opt,
                      struct bstr name, struct bstr param, void *dst)
{

    mp_err(log, "option type doesn't accept strings");
    return M_OPT_INVALID;
}
