
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bmpstring; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_5__ {int length; int data; } ;
typedef int PKCS12_SAFEBAG ;
typedef TYPE_3__ ASN1_TYPE ;


 int NID_friendlyName ;
 char* OPENSSL_uni2utf8 (int ,int ) ;
 TYPE_3__* PKCS12_SAFEBAG_get0_attr (int *,int ) ;
 scalar_t__ V_ASN1_BMPSTRING ;

char *PKCS12_get_friendlyname(PKCS12_SAFEBAG *bag)
{
    const ASN1_TYPE *atype;

    if ((atype = PKCS12_SAFEBAG_get0_attr(bag, NID_friendlyName)) == ((void*)0))
        return ((void*)0);
    if (atype->type != V_ASN1_BMPSTRING)
        return ((void*)0);
    return OPENSSL_uni2utf8(atype->value.bmpstring->data,
                            atype->value.bmpstring->length);
}
