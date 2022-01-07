
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_symbol_properties {int dummy; } ;


 int SYM_VALUE_NAMES_LEN ;
 int memcpy (struct nn_symbol_properties*,int *,int) ;
 int * sym_value_names ;

int nn_symbol_info (int i, struct nn_symbol_properties *buf, int buflen)
{
    if (i < 0 || i >= SYM_VALUE_NAMES_LEN) {
        return 0;
    }
    if (buflen > (int)sizeof (struct nn_symbol_properties)) {
        buflen = (int)sizeof (struct nn_symbol_properties);
    }
    memcpy(buf, &sym_value_names [i], buflen);
    return buflen;
}
