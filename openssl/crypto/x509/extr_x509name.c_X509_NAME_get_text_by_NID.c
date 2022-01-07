
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;
typedef int ASN1_OBJECT ;


 int * OBJ_nid2obj (int) ;
 int X509_NAME_get_text_by_OBJ (int *,int *,char*,int) ;

int X509_NAME_get_text_by_NID(X509_NAME *name, int nid, char *buf, int len)
{
    ASN1_OBJECT *obj;

    obj = OBJ_nid2obj(nid);
    if (obj == ((void*)0))
        return -1;
    return X509_NAME_get_text_by_OBJ(name, obj, buf, len);
}
