
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_12__ {TYPE_2__* ameth; } ;
struct TYPE_11__ {int * cert; TYPE_1__* issuer_and_serial; int version; } ;
struct TYPE_10__ {int (* pkey_ctrl ) (TYPE_4__*,int ,int ,TYPE_3__*) ;} ;
struct TYPE_9__ {int serial; int issuer; } ;
typedef TYPE_3__ PKCS7_RECIP_INFO ;
typedef TYPE_4__ EVP_PKEY ;


 int ASN1_INTEGER_dup (int ) ;
 int ASN1_INTEGER_free (int ) ;
 int ASN1_INTEGER_set (int ,int ) ;
 int ASN1_PKEY_CTRL_PKCS7_ENCRYPT ;
 int PKCS7_F_PKCS7_RECIP_INFO_SET ;
 int PKCS7_R_ENCRYPTION_CTRL_FAILURE ;
 int PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE ;
 int PKCS7err (int ,int ) ;
 int X509_NAME_set (int *,int ) ;
 TYPE_4__* X509_get0_pubkey (int *) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;
 int X509_up_ref (int *) ;
 int stub1 (TYPE_4__*,int ,int ,TYPE_3__*) ;

int PKCS7_RECIP_INFO_set(PKCS7_RECIP_INFO *p7i, X509 *x509)
{
    int ret;
    EVP_PKEY *pkey = ((void*)0);
    if (!ASN1_INTEGER_set(p7i->version, 0))
        return 0;
    if (!X509_NAME_set(&p7i->issuer_and_serial->issuer,
                       X509_get_issuer_name(x509)))
        return 0;

    ASN1_INTEGER_free(p7i->issuer_and_serial->serial);
    if (!(p7i->issuer_and_serial->serial =
          ASN1_INTEGER_dup(X509_get_serialNumber(x509))))
        return 0;

    pkey = X509_get0_pubkey(x509);

    if (!pkey || !pkey->ameth || !pkey->ameth->pkey_ctrl) {
        PKCS7err(PKCS7_F_PKCS7_RECIP_INFO_SET,
                 PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE);
        goto err;
    }

    ret = pkey->ameth->pkey_ctrl(pkey, ASN1_PKEY_CTRL_PKCS7_ENCRYPT, 0, p7i);
    if (ret == -2) {
        PKCS7err(PKCS7_F_PKCS7_RECIP_INFO_SET,
                 PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE);
        goto err;
    }
    if (ret <= 0) {
        PKCS7err(PKCS7_F_PKCS7_RECIP_INFO_SET,
                 PKCS7_R_ENCRYPTION_CTRL_FAILURE);
        goto err;
    }

    X509_up_ref(x509);
    p7i->cert = x509;

    return 1;

 err:
    return 0;
}
