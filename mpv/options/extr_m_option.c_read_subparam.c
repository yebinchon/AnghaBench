
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_15__ {int len; char* start; int member_0; } ;
typedef TYPE_1__ bstr ;


 int BSTR_P (TYPE_1__) ;
 int M_OPT_INVALID ;
 TYPE_1__ bstr_cut (TYPE_1__,int) ;
 scalar_t__ bstr_eatstart0 (TYPE_1__*,char*) ;
 TYPE_1__ bstr_splice (TYPE_1__,int,int) ;
 int bstr_startswith0 (TYPE_1__,char*) ;
 int bstrcspn (TYPE_1__,char*) ;
 int bstrtoll (TYPE_1__,TYPE_1__*,int ) ;
 int mp_err (struct mp_log*,char*,int,...) ;

__attribute__((used)) static int read_subparam(struct mp_log *log, bstr optname, char *termset,
                         bstr *str, bstr *out_subparam)
{
    bstr p = *str;
    bstr subparam = {0};

    if (bstr_eatstart0(&p, "\"")) {
        int optlen = bstrcspn(p, "\"");
        subparam = bstr_splice(p, 0, optlen);
        p = bstr_cut(p, optlen);
        if (!bstr_startswith0(p, "\"")) {
            mp_err(log, "Terminating '\"' missing for '%.*s'\n",
                   BSTR_P(optname));
            return M_OPT_INVALID;
        }
        p = bstr_cut(p, 1);
    } else if (bstr_eatstart0(&p, "[")) {
        bstr s = p;
        int balance = 1;
        while (p.len && balance > 0) {
            if (p.start[0] == '[') {
                balance++;
            } else if (p.start[0] == ']') {
                balance--;
            }
            p = bstr_cut(p, 1);
        }
        if (balance != 0) {
            mp_err(log, "Terminating ']' missing for '%.*s'\n",
                   BSTR_P(optname));
            return M_OPT_INVALID;
        }
        subparam = bstr_splice(s, 0, s.len - p.len - 1);
    } else if (bstr_eatstart0(&p, "%")) {
        int optlen = bstrtoll(p, &p, 0);
        if (!bstr_startswith0(p, "%") || (optlen > p.len - 1)) {
            mp_err(log, "Invalid length %d for '%.*s'\n",
                   optlen, BSTR_P(optname));
            return M_OPT_INVALID;
        }
        subparam = bstr_splice(p, 1, optlen + 1);
        p = bstr_cut(p, optlen + 1);
    } else {


        int optlen = bstrcspn(p, termset);
        subparam = bstr_splice(p, 0, optlen);
        p = bstr_cut(p, optlen);
    }

    *str = p;
    *out_subparam = subparam;
    return 0;
}
