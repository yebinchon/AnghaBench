
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
typedef int m_option_t ;


 int BSTR_P (struct bstr) ;
 int M_OPT_DISALLOW_PARAM ;
 int mp_err (struct mp_log*,char*,int ,int ) ;

__attribute__((used)) static int parse_dummy_flag(struct mp_log *log, const m_option_t *opt,
                            struct bstr name, struct bstr param, void *dst)
{
    if (param.len) {
        mp_err(log, "Invalid parameter for %.*s flag: %.*s\n",
               BSTR_P(name), BSTR_P(param));
        return M_OPT_DISALLOW_PARAM;
    }
    return 0;
}
