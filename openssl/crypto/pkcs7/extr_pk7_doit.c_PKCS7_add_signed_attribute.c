
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int auth_attr; } ;
typedef TYPE_1__ PKCS7_SIGNER_INFO ;


 int add_attribute (int *,int,int,void*) ;

int PKCS7_add_signed_attribute(PKCS7_SIGNER_INFO *p7si, int nid, int atrtype,
                               void *value)
{
    return add_attribute(&(p7si->auth_attr), nid, atrtype, value);
}
