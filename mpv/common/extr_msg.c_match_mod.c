
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
typedef TYPE_1__ bstr ;


 TYPE_1__ bstr0 (char const*) ;
 scalar_t__ bstr_eatstart0 (TYPE_1__*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool match_mod(const char *name, const char *mod)
{
    if (!strcmp(mod, "all"))
        return 1;

    bstr b = bstr0(name);
    return bstr_eatstart0(&b, mod) && (bstr_eatstart0(&b, "/") || !b.len);
}
