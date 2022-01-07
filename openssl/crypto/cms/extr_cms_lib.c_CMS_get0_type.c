
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* contentType; } ;
typedef TYPE_1__ CMS_ContentInfo ;
typedef int ASN1_OBJECT ;



const ASN1_OBJECT *CMS_get0_type(const CMS_ContentInfo *cms)
{
    return cms->contentType;
}
