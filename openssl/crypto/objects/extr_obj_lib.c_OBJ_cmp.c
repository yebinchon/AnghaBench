
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int memcmp (int ,int ,int) ;

int OBJ_cmp(const ASN1_OBJECT *a, const ASN1_OBJECT *b)
{
    int ret;

    ret = (a->length - b->length);
    if (ret)
        return ret;
    return memcmp(a->data, b->data, a->length);
}
