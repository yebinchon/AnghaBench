
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; } ;
typedef TYPE_1__ bstr ;


 TYPE_1__ bstr_lstrip (TYPE_1__) ;
 scalar_t__ bstr_startswith0 (TYPE_1__,char*) ;

__attribute__((used)) static bool skip_ws(bstr *s)
{
    *s = bstr_lstrip(*s);
    if (bstr_startswith0(*s, "#"))
        s->len = 0;
    return s->len;
}
