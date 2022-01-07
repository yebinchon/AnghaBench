
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int sid; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 int cms_SignerIdentifier_cert_cmp (int ,int *) ;

int CMS_SignerInfo_cert_cmp(CMS_SignerInfo *si, X509 *cert)
{
    return cms_SignerIdentifier_cert_cmp(si->sid, cert);
}
