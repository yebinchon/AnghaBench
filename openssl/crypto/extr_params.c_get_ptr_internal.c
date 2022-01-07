
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int data_type; size_t data_size; scalar_t__ data; } ;
typedef TYPE_1__ OSSL_PARAM ;



__attribute__((used)) static int get_ptr_internal(const OSSL_PARAM *p, const void **val,
                            size_t *used_len, unsigned int type)
{
    if (val == ((void*)0) || p == ((void*)0) || p->data_type != type)
        return 0;
    if (used_len != ((void*)0))
        *used_len = p->data_size;
    *val = *(const void **)p->data;
    return 1;
}
