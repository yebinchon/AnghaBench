
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int len; char* start; } ;
typedef TYPE_1__ bstr ;


 TYPE_1__ bstr_cut (TYPE_1__,int) ;
 TYPE_1__ bstr_splice (TYPE_1__,int ,int) ;
 int bstr_xappend (void*,TYPE_1__*,TYPE_1__) ;
 int mp_parse_escape (void*,TYPE_1__*,TYPE_1__*) ;

bool mp_append_escaped_string_noalloc(void *talloc_ctx, bstr *dst, bstr *src)
{
    bstr t = *src;
    int cur = 0;
    while (1) {
        if (cur >= t.len || t.start[cur] == '"') {
            *src = bstr_cut(t, cur);
            t = bstr_splice(t, 0, cur);
            if (dst->start == ((void*)0)) {
                *dst = t;
            } else {
                bstr_xappend(talloc_ctx, dst, t);
            }
            return 1;
        } else if (t.start[cur] == '\\') {
            bstr_xappend(talloc_ctx, dst, bstr_splice(t, 0, cur));
            t = bstr_cut(t, cur + 1);
            cur = 0;
            if (!mp_parse_escape(talloc_ctx, dst, &t))
                goto error;
        } else {
            cur++;
        }
    }
error:
    return 0;
}
