
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int X509V3_EXT_METHOD ;


 int NID_undef ;
 int OBJ_obj2nid (int ) ;
 int const* X509V3_EXT_get_nid (int) ;
 int X509_EXTENSION_get_object (int *) ;

const X509V3_EXT_METHOD *X509V3_EXT_get(X509_EXTENSION *ext)
{
    int nid;
    if ((nid = OBJ_obj2nid(X509_EXTENSION_get_object(ext))) == NID_undef)
        return ((void*)0);
    return X509V3_EXT_get_nid(nid);
}
