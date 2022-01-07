
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int subjectKeyIdentifier; int issuerAndSerialNumber; } ;
struct TYPE_5__ {int type; TYPE_1__ d; } ;
typedef TYPE_2__ CMS_SignerIdentifier ;


 int CMS_F_CMS_SET1_SIGNERIDENTIFIER ;
 int CMS_R_UNKNOWN_ID ;


 int CMSerr (int ,int ) ;
 int cms_set1_ias (int *,int *) ;
 int cms_set1_keyid (int *,int *) ;

int cms_set1_SignerIdentifier(CMS_SignerIdentifier *sid, X509 *cert, int type)
{
    switch (type) {
    case 129:
        if (!cms_set1_ias(&sid->d.issuerAndSerialNumber, cert))
            return 0;
        break;

    case 128:
        if (!cms_set1_keyid(&sid->d.subjectKeyIdentifier, cert))
            return 0;
        break;

    default:
        CMSerr(CMS_F_CMS_SET1_SIGNERIDENTIFIER, CMS_R_UNKNOWN_ID);
        return 0;
    }

    sid->type = type;

    return 1;
}
