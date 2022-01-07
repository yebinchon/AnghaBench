
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct MPContext {int dummy; } ;
struct TYPE_8__ {int start; scalar_t__ len; int member_0; } ;
typedef TYPE_1__ bstr ;


 TYPE_1__ bstr0 (char const*) ;
 int bstr_eatstart0 (TYPE_1__*,char*) ;
 int bstr_xappend (void*,TYPE_1__*,TYPE_1__) ;
 int mp_append_escaped_string (void*,TYPE_1__*,TYPE_1__*) ;
 char* mp_property_expand_string (struct MPContext*,int ) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 char* talloc_strdup (int *,char*) ;

char *mp_property_expand_escaped_string(struct MPContext *mpctx, const char *str)
{
    void *tmp = talloc_new(((void*)0));
    bstr strb = bstr0(str);
    bstr dst = {0};
    while (strb.len) {
        if (!mp_append_escaped_string(tmp, &dst, &strb)) {
            talloc_free(tmp);
            return talloc_strdup(((void*)0), "(broken escape sequences)");
        }

        if (!bstr_eatstart0(&strb, "\""))
            break;
        bstr_xappend(tmp, &dst, bstr0("\""));
    }
    char *r = mp_property_expand_string(mpctx, dst.start);
    talloc_free(tmp);
    return r;
}
