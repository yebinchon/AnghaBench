
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int signedAttrs; TYPE_1__* digestAlgorithm; } ;
struct TYPE_4__ {int algorithm; } ;
typedef int EVP_MD ;
typedef TYPE_2__ CMS_SignerInfo ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_digest (int ,int const*,int ,unsigned char*,unsigned int*) ;
 int CMS_Attributes_Verify ;
 int * EVP_get_digestbyobj (int ) ;

__attribute__((used)) static int cms_msgSigDigest(CMS_SignerInfo *si,
                            unsigned char *dig, unsigned int *diglen)
{
    const EVP_MD *md;
    md = EVP_get_digestbyobj(si->digestAlgorithm->algorithm);
    if (md == ((void*)0))
        return 0;
    if (!ASN1_item_digest(ASN1_ITEM_rptr(CMS_Attributes_Verify), md,
                          si->signedAttrs, dig, diglen))
        return 0;
    return 1;
}
