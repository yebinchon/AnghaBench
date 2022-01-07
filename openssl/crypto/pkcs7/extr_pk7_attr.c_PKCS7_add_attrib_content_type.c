
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS7_SIGNER_INFO ;
typedef int ASN1_OBJECT ;


 int NID_pkcs7_data ;
 int NID_pkcs9_contentType ;
 int * OBJ_nid2obj (int ) ;
 int PKCS7_add_signed_attribute (int *,int ,int ,int *) ;
 scalar_t__ PKCS7_get_signed_attribute (int *,int ) ;
 int V_ASN1_OBJECT ;

int PKCS7_add_attrib_content_type(PKCS7_SIGNER_INFO *si, ASN1_OBJECT *coid)
{
    if (PKCS7_get_signed_attribute(si, NID_pkcs9_contentType))
        return 0;
    if (!coid)
        coid = OBJ_nid2obj(NID_pkcs7_data);
    return PKCS7_add_signed_attribute(si, NID_pkcs9_contentType,
                                      V_ASN1_OBJECT, coid);
}
