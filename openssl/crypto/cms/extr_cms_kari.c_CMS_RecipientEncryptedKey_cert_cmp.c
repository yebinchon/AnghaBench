
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_7__ {TYPE_1__* rKeyId; int issuerAndSerialNumber; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_8__ {TYPE_4__* rid; } ;
struct TYPE_6__ {int subjectKeyIdentifier; } ;
typedef TYPE_3__ CMS_RecipientEncryptedKey ;
typedef TYPE_4__ CMS_KeyAgreeRecipientIdentifier ;


 scalar_t__ CMS_REK_ISSUER_SERIAL ;
 scalar_t__ CMS_REK_KEYIDENTIFIER ;
 int cms_ias_cert_cmp (int ,int *) ;
 int cms_keyid_cert_cmp (int ,int *) ;

int CMS_RecipientEncryptedKey_cert_cmp(CMS_RecipientEncryptedKey *rek,
                                       X509 *cert)
{
    CMS_KeyAgreeRecipientIdentifier *rid = rek->rid;
    if (rid->type == CMS_REK_ISSUER_SERIAL)
        return cms_ias_cert_cmp(rid->d.issuerAndSerialNumber, cert);
    else if (rid->type == CMS_REK_KEYIDENTIFIER)
        return cms_keyid_cert_cmp(rid->d.rKeyId->subjectKeyIdentifier, cert);
    else
        return -1;
}
