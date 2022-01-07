
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
typedef int m_option_t ;


 int BSTR_P (struct bstr) ;
 scalar_t__ HAS_NOPTS (int const*) ;
 double MP_NOPTS_VALUE ;
 int M_OPT_INVALID ;
 int M_OPT_MISSING_PARAM ;
 scalar_t__ bstr_equals0 (struct bstr,char*) ;
 int mp_err (struct mp_log*,char*,int ,int ) ;
 int parse_timestring (struct bstr,double*,int ) ;

__attribute__((used)) static int parse_time(struct mp_log *log, const m_option_t *opt,
                      struct bstr name, struct bstr param, void *dst)
{
    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    double time = MP_NOPTS_VALUE;
    if (HAS_NOPTS(opt) && bstr_equals0(param, "no")) {

    } else if (!parse_timestring(param, &time, 0)) {
        mp_err(log, "Option %.*s: invalid time: '%.*s'\n",
               BSTR_P(name), BSTR_P(param));
        return M_OPT_INVALID;
    }

    if (dst)
        *(double *)dst = time;
    return 1;
}
