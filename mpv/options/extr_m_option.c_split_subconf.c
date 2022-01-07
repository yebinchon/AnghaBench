
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_1__ bstr ;


 scalar_t__ bstr_eatstart0 (TYPE_1__*,char*) ;
 int read_subparam (struct mp_log*,TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int split_subconf(struct mp_log *log, bstr optname, bstr *str,
                         bstr *out_name, bstr *out_val)
{
    bstr p = *str;
    bstr subparam = {0};
    bstr subopt;
    int r = read_subparam(log, optname, ":=,\\%\"'[]", &p, &subopt);
    if (r < 0)
        return r;
    if (bstr_eatstart0(&p, "=")) {
        r = read_subparam(log, subopt, ":=,\\%\"'[]", &p, &subparam);
        if (r < 0)
            return r;
    }
    *str = p;
    *out_name = subopt;
    *out_val = subparam;
    return 0;
}
