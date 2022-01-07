
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int * OBJ_nid2obj (int) ;
 int * X509_EXTENSION_create_by_OBJ (int **,int *,int,int *) ;
 int X509_F_X509_EXTENSION_CREATE_BY_NID ;
 int X509_R_UNKNOWN_NID ;
 int X509err (int ,int ) ;

X509_EXTENSION *X509_EXTENSION_create_by_NID(X509_EXTENSION **ex, int nid,
                                             int crit,
                                             ASN1_OCTET_STRING *data)
{
    ASN1_OBJECT *obj;
    X509_EXTENSION *ret;

    obj = OBJ_nid2obj(nid);
    if (obj == ((void*)0)) {
        X509err(X509_F_X509_EXTENSION_CREATE_BY_NID, X509_R_UNKNOWN_NID);
        return ((void*)0);
    }
    ret = X509_EXTENSION_create_by_OBJ(ex, obj, crit, data);
    if (ret == ((void*)0))
        ASN1_OBJECT_free(obj);
    return ret;
}
