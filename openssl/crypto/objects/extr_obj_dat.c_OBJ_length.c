
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; } ;
typedef TYPE_1__ ASN1_OBJECT ;



size_t OBJ_length(const ASN1_OBJECT *obj)
{
    if (obj == ((void*)0))
        return 0;
    return obj->length;
}
