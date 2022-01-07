
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* type; } ;
typedef TYPE_1__ PKCS12_SAFEBAG ;
typedef int ASN1_OBJECT ;



const ASN1_OBJECT *PKCS12_SAFEBAG_get0_type(const PKCS12_SAFEBAG *bag)
{
    return bag->type;
}
