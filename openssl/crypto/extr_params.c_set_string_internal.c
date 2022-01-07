
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t return_size; unsigned int data_type; size_t data_size; int * data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static int set_string_internal(OSSL_PARAM *p, const void *val, size_t len,
                               unsigned int type)
{
    p->return_size = len;
    if (p->data == ((void*)0))
        return 1;
    if (p->data_type != type || p->data_size < len)
        return 0;

    memcpy(p->data, val, len);
    return 1;
}
