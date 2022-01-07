
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__ bstr ;


 double bstrtod (TYPE_1__,TYPE_1__*) ;
 int isfinite (double) ;

__attribute__((used)) static bool parse_time(bstr str, double *out_time)
{
    bstr rest;
    double time = bstrtod(str, &rest);
    if (!str.len || rest.len || !isfinite(time))
        return 0;
    *out_time = time;
    return 1;
}
