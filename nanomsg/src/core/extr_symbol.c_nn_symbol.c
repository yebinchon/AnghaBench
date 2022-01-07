
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_symbol_properties {int value; char const* name; } ;


 int EINVAL ;
 int SYM_VALUE_NAMES_LEN ;
 int errno ;
 struct nn_symbol_properties* sym_value_names ;

const char *nn_symbol (int i, int *value)
{
    const struct nn_symbol_properties *svn;
    if (i < 0 || i >= SYM_VALUE_NAMES_LEN) {
        errno = EINVAL;
        return ((void*)0);
    }

    svn = &sym_value_names [i];
    if (value)
        *value = svn->value;
    return svn->name;
}
