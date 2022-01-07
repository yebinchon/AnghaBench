
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; int length; } ;
typedef TYPE_1__ ASN1_STRING ;
typedef int ASN1_ITEM ;


 int ASN1_F_ASN1_ITEM_PACK ;
 int ASN1_R_ENCODE_ERROR ;
 int ASN1_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_STRING_new () ;
 int ASN1_item_i2d (void*,int **,int const*) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;

ASN1_STRING *ASN1_item_pack(void *obj, const ASN1_ITEM *it, ASN1_STRING **oct)
{
    ASN1_STRING *octmp;

     if (oct == ((void*)0) || *oct == ((void*)0)) {
        if ((octmp = ASN1_STRING_new()) == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_ITEM_PACK, ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
    } else {
        octmp = *oct;
    }

    OPENSSL_free(octmp->data);
    octmp->data = ((void*)0);

    if ((octmp->length = ASN1_item_i2d(obj, &octmp->data, it)) == 0) {
        ASN1err(ASN1_F_ASN1_ITEM_PACK, ASN1_R_ENCODE_ERROR);
        goto err;
    }
    if (octmp->data == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_ITEM_PACK, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (oct != ((void*)0) && *oct == ((void*)0))
        *oct = octmp;

    return octmp;
 err:
    if (oct == ((void*)0) || *oct == ((void*)0))
        ASN1_STRING_free(octmp);
    return ((void*)0);
}
