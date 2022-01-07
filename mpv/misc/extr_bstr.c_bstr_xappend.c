
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; char* start; } ;
typedef TYPE_1__ bstr ;


 int memcpy (char*,char*,int) ;
 int resize_append (void*,TYPE_1__*,int) ;

void bstr_xappend(void *talloc_ctx, bstr *s, bstr append)
{
    if (!append.len)
        return;
    resize_append(talloc_ctx, s, append.len + 1);
    memcpy(s->start + s->len, append.start, append.len);
    s->len += append.len;
    s->start[s->len] = '\0';
}
