
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unauth_attr; } ;
typedef TYPE_1__ PKCS7_SIGNER_INFO ;
typedef int ASN1_TYPE ;


 int * get_attribute (int ,int) ;

ASN1_TYPE *PKCS7_get_attribute(PKCS7_SIGNER_INFO *si, int nid)
{
    return get_attribute(si->unauth_attr, nid);
}
