
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t return_size; unsigned int data_type; int * data; } ;
typedef TYPE_1__ OSSL_PARAM ;



__attribute__((used)) static int set_ptr_internal(OSSL_PARAM *p, const void *val,
                            unsigned int type, size_t len)
{
    p->return_size = len;
    if (p->data_type != type)
        return 0;
    if (p->data != ((void*)0))
        *(const void **)p->data = val;
    return 1;
}
