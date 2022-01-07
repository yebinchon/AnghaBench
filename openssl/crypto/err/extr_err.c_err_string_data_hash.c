
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long error; } ;
typedef TYPE_1__ ERR_STRING_DATA ;


 unsigned long ERR_GET_LIB (unsigned long) ;

__attribute__((used)) static unsigned long err_string_data_hash(const ERR_STRING_DATA *a)
{
    unsigned long ret, l;

    l = a->error;
    ret = l ^ ERR_GET_LIB(l);
    return (ret ^ ret % 19 * 13);
}
