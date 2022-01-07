
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* data; } ;
typedef TYPE_1__ ASN1_OBJECT ;



const unsigned char *OBJ_get0_data(const ASN1_OBJECT *obj)
{
    if (obj == ((void*)0))
        return ((void*)0);
    return obj->data;
}
