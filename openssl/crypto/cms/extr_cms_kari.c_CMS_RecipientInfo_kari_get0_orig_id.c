
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int X509_NAME ;
typedef int X509_ALGOR ;
struct TYPE_13__ {TYPE_4__* originatorKey; int * subjectKeyIdentifier; TYPE_3__* issuerAndSerialNumber; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_5__ d; } ;
struct TYPE_10__ {TYPE_1__* kari; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_12__ {int * publicKey; int * algorithm; } ;
struct TYPE_11__ {int * serialNumber; int * issuer; } ;
struct TYPE_9__ {TYPE_7__* originator; } ;
typedef TYPE_6__ CMS_RecipientInfo ;
typedef TYPE_7__ CMS_OriginatorIdentifierOrKey ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;
typedef int ASN1_BIT_STRING ;


 int CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ORIG_ID ;
 scalar_t__ CMS_OIK_ISSUER_SERIAL ;
 scalar_t__ CMS_OIK_KEYIDENTIFIER ;
 scalar_t__ CMS_OIK_PUBKEY ;
 scalar_t__ CMS_RECIPINFO_AGREE ;
 int CMS_R_NOT_KEY_AGREEMENT ;
 int CMSerr (int ,int ) ;

int CMS_RecipientInfo_kari_get0_orig_id(CMS_RecipientInfo *ri,
                                        X509_ALGOR **pubalg,
                                        ASN1_BIT_STRING **pubkey,
                                        ASN1_OCTET_STRING **keyid,
                                        X509_NAME **issuer,
                                        ASN1_INTEGER **sno)
{
    CMS_OriginatorIdentifierOrKey *oik;
    if (ri->type != CMS_RECIPINFO_AGREE) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ORIG_ID,
               CMS_R_NOT_KEY_AGREEMENT);
        return 0;
    }
    oik = ri->d.kari->originator;
    if (issuer)
        *issuer = ((void*)0);
    if (sno)
        *sno = ((void*)0);
    if (keyid)
        *keyid = ((void*)0);
    if (pubalg)
        *pubalg = ((void*)0);
    if (pubkey)
        *pubkey = ((void*)0);
    if (oik->type == CMS_OIK_ISSUER_SERIAL) {
        if (issuer)
            *issuer = oik->d.issuerAndSerialNumber->issuer;
        if (sno)
            *sno = oik->d.issuerAndSerialNumber->serialNumber;
    } else if (oik->type == CMS_OIK_KEYIDENTIFIER) {
        if (keyid)
            *keyid = oik->d.subjectKeyIdentifier;
    } else if (oik->type == CMS_OIK_PUBKEY) {
        if (pubalg)
            *pubalg = oik->d.originatorKey->algorithm;
        if (pubkey)
            *pubkey = oik->d.originatorKey->publicKey;
    } else
        return 0;
    return 1;
}
