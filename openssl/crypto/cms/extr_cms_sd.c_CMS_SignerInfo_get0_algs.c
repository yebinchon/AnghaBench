
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ALGOR ;
typedef int X509 ;
struct TYPE_3__ {int * signatureAlgorithm; int * digestAlgorithm; int * signer; int * pkey; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ CMS_SignerInfo ;



void CMS_SignerInfo_get0_algs(CMS_SignerInfo *si, EVP_PKEY **pk,
                              X509 **signer, X509_ALGOR **pdig,
                              X509_ALGOR **psig)
{
    if (pk)
        *pk = si->pkey;
    if (signer)
        *signer = si->signer;
    if (pdig)
        *pdig = si->digestAlgorithm;
    if (psig)
        *psig = si->signatureAlgorithm;
}
