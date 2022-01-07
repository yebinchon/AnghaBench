
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int ASN1_F_ASN1_OBJECT_NEW ;
 int ASN1_OBJECT_FLAG_DYNAMIC ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;

ASN1_OBJECT *ASN1_OBJECT_new(void)
{
    ASN1_OBJECT *ret;

    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_OBJECT_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->flags = ASN1_OBJECT_FLAG_DYNAMIC;
    return ret;
}
