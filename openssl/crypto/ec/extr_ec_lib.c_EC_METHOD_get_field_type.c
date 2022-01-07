
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field_type; } ;
typedef TYPE_1__ EC_METHOD ;



int EC_METHOD_get_field_type(const EC_METHOD *meth)
{
    return meth->field_type;
}
