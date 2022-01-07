
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_9__ {TYPE_2__* rKeyId; TYPE_1__* issuerAndSerialNumber; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_3__ d; } ;
struct TYPE_10__ {TYPE_5__* rid; } ;
struct TYPE_8__ {int * other; int * date; int * subjectKeyIdentifier; } ;
struct TYPE_7__ {int * serialNumber; int * issuer; } ;
typedef TYPE_4__ CMS_RecipientEncryptedKey ;
typedef int CMS_OtherKeyAttribute ;
typedef TYPE_5__ CMS_KeyAgreeRecipientIdentifier ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;
typedef int ASN1_GENERALIZEDTIME ;


 scalar_t__ CMS_REK_ISSUER_SERIAL ;
 scalar_t__ CMS_REK_KEYIDENTIFIER ;

int CMS_RecipientEncryptedKey_get0_id(CMS_RecipientEncryptedKey *rek,
                                      ASN1_OCTET_STRING **keyid,
                                      ASN1_GENERALIZEDTIME **tm,
                                      CMS_OtherKeyAttribute **other,
                                      X509_NAME **issuer, ASN1_INTEGER **sno)
{
    CMS_KeyAgreeRecipientIdentifier *rid = rek->rid;
    if (rid->type == CMS_REK_ISSUER_SERIAL) {
        if (issuer)
            *issuer = rid->d.issuerAndSerialNumber->issuer;
        if (sno)
            *sno = rid->d.issuerAndSerialNumber->serialNumber;
        if (keyid)
            *keyid = ((void*)0);
        if (tm)
            *tm = ((void*)0);
        if (other)
            *other = ((void*)0);
    } else if (rid->type == CMS_REK_KEYIDENTIFIER) {
        if (keyid)
            *keyid = rid->d.rKeyId->subjectKeyIdentifier;
        if (tm)
            *tm = rid->d.rKeyId->date;
        if (other)
            *other = rid->d.rKeyId->other;
        if (issuer)
            *issuer = ((void*)0);
        if (sno)
            *sno = ((void*)0);
    } else
        return 0;
    return 1;
}
