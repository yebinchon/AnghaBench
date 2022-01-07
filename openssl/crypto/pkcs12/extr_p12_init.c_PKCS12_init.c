
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* authsafes; int version; } ;
struct TYPE_7__ {int * data; } ;
struct TYPE_8__ {TYPE_1__ d; int type; } ;
typedef TYPE_3__ PKCS12 ;


 int ASN1_INTEGER_set (int ,int) ;
 int * ASN1_OCTET_STRING_new () ;
 int ERR_R_MALLOC_FAILURE ;

 int OBJ_nid2obj (int) ;
 int PKCS12_F_PKCS12_INIT ;
 int PKCS12_R_UNSUPPORTED_PKCS12_MODE ;
 int PKCS12_free (TYPE_3__*) ;
 TYPE_3__* PKCS12_new () ;
 int PKCS12err (int ,int ) ;

PKCS12 *PKCS12_init(int mode)
{
    PKCS12 *pkcs12;

    if ((pkcs12 = PKCS12_new()) == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_INIT, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    if (!ASN1_INTEGER_set(pkcs12->version, 3))
        goto err;
    pkcs12->authsafes->type = OBJ_nid2obj(mode);
    switch (mode) {
    case 128:
        if ((pkcs12->authsafes->d.data = ASN1_OCTET_STRING_new()) == ((void*)0)) {
            PKCS12err(PKCS12_F_PKCS12_INIT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        break;
    default:
        PKCS12err(PKCS12_F_PKCS12_INIT, PKCS12_R_UNSUPPORTED_PKCS12_MODE);
        goto err;
    }
    return pkcs12;

 err:
    PKCS12_free(pkcs12);
    return ((void*)0);
}
