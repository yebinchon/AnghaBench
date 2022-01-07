
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
typedef TYPE_1__ bstr ;


 long long INT_MAX ;
 long long INT_MIN ;
 scalar_t__ bstr_eatstart0 (TYPE_1__*,char*) ;
 long long bstrtoll (TYPE_1__,TYPE_1__*,int) ;

__attribute__((used)) static bool eat_num_per(bstr *s, int *out_num, bool *out_per)
{
    bstr rest;
    long long v = bstrtoll(*s, &rest, 10);
    if (s->len == rest.len || v < INT_MIN || v > INT_MAX)
        return 0;
    *out_num = v;
    *out_per = 0;
    *s = rest;
    if (bstr_eatstart0(&rest, "%") && v >= 0 && v <= 100) {
        *out_per = 1;
        *s = rest;
    }
    return 1;
}
