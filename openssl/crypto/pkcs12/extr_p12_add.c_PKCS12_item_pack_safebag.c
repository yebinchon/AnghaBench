
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int octet; } ;
struct TYPE_12__ {TYPE_2__ value; void* type; } ;
struct TYPE_9__ {TYPE_4__* bag; } ;
struct TYPE_11__ {void* type; TYPE_1__ value; } ;
typedef TYPE_3__ PKCS12_SAFEBAG ;
typedef TYPE_4__ PKCS12_BAGS ;
typedef int ASN1_ITEM ;


 int ASN1_item_pack (void*,int const*,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 void* OBJ_nid2obj (int) ;
 int PKCS12_BAGS_free (TYPE_4__*) ;
 TYPE_4__* PKCS12_BAGS_new () ;
 int PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG ;
 TYPE_3__* PKCS12_SAFEBAG_new () ;
 int PKCS12err (int ,int ) ;

PKCS12_SAFEBAG *PKCS12_item_pack_safebag(void *obj, const ASN1_ITEM *it,
                                         int nid1, int nid2)
{
    PKCS12_BAGS *bag;
    PKCS12_SAFEBAG *safebag;

    if ((bag = PKCS12_BAGS_new()) == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    bag->type = OBJ_nid2obj(nid1);
    if (!ASN1_item_pack(obj, it, &bag->value.octet)) {
        PKCS12err(PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if ((safebag = PKCS12_SAFEBAG_new()) == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    safebag->value.bag = bag;
    safebag->type = OBJ_nid2obj(nid2);
    return safebag;

 err:
    PKCS12_BAGS_free(bag);
    return ((void*)0);
}
