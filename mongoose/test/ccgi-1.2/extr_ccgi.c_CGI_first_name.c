
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* varname; struct TYPE_3__* iter; } ;
typedef TYPE_1__ CGI_varlist ;



const char *
CGI_first_name(CGI_varlist *v) {
    return v == 0 ? 0 : (v->iter = v)->varname;
}
