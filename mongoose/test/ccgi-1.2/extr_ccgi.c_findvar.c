
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* varname; struct TYPE_4__* next; struct TYPE_4__* iter; } ;
typedef TYPE_1__ CGI_varlist ;


 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static CGI_varlist *
findvar(CGI_varlist *v, const char *varname) {
    if (varname == 0 && v != 0) {
        return v->iter;
    }
    for (; v != 0; v = v->next) {
        if (v->varname[0] == varname[0] &&
            strcmp(v->varname, varname) == 0)
        {
            break;
        }
    }
    return v;
}
