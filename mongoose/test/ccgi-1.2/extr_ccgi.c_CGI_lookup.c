
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* value; } ;
struct TYPE_6__ {char const* value; } ;
typedef TYPE_2__ CGI_varlist ;


 TYPE_2__* findvar (TYPE_2__*,char const*) ;

const char *
CGI_lookup(CGI_varlist *v, const char *varname) {
    return (v = findvar(v, varname)) == 0 ? 0 : v->value->value;
}
