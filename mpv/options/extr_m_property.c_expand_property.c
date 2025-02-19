
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_1__ bstr ;


 int M_PROPERTY_GET_STRING ;
 int M_PROPERTY_PRINT ;
 int M_PROPERTY_UNAVAILABLE ;
 int append_str (char**,int*,int ) ;
 int bstr0 (char*) ;
 int bstr_eatstart0 (TYPE_1__*,char*) ;
 scalar_t__ bstr_equals0 (TYPE_1__,char*) ;
 scalar_t__ bstr_split_tok (TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ;
 int m_property_do_bstr (struct m_property const*,TYPE_1__,int,char**,void*) ;
 int talloc_free (char*) ;

__attribute__((used)) static int expand_property(const struct m_property *prop_list, char **ret,
                           int *ret_len, bstr prop, bool silent_error, void *ctx)
{
    bool cond_yes = bstr_eatstart0(&prop, "?");
    bool cond_no = !cond_yes && bstr_eatstart0(&prop, "!");
    bool test = cond_yes || cond_no;
    bool raw = bstr_eatstart0(&prop, "=");
    bstr comp_with = {0};
    bool comp = test && bstr_split_tok(prop, "==", &prop, &comp_with);
    if (test && !comp)
        raw = 1;
    int method = raw ? M_PROPERTY_GET_STRING : M_PROPERTY_PRINT;

    char *s = ((void*)0);
    int r = m_property_do_bstr(prop_list, prop, method, &s, ctx);
    bool skip;
    if (comp) {
        skip = ((s && bstr_equals0(comp_with, s)) != cond_yes);
    } else if (test) {
        skip = (!!s != cond_yes);
    } else {
        skip = !!s;
        char *append = s;
        if (!s && !silent_error && !raw)
            append = (r == M_PROPERTY_UNAVAILABLE) ? "(unavailable)" : "(error)";
        append_str(ret, ret_len, bstr0(append));
    }
    talloc_free(s);
    return skip;
}
