
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* digestedData; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
struct TYPE_6__ {int digestAlgorithm; } ;
typedef TYPE_2__ CMS_DigestedData ;
typedef TYPE_3__ CMS_ContentInfo ;
typedef int BIO ;


 int * cms_DigestAlgorithm_init_bio (int ) ;

BIO *cms_DigestedData_init_bio(const CMS_ContentInfo *cms)
{
    CMS_DigestedData *dd;
    dd = cms->d.digestedData;
    return cms_DigestAlgorithm_init_bio(dd->digestAlgorithm);
}
