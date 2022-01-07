
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ATTRIBUTE ;
typedef int ASN1_OBJECT ;


 int ERR_R_MALLOC_FAILURE ;
 int X509_ATTRIBUTE_free (int *) ;
 int * X509_ATTRIBUTE_new () ;
 int X509_ATTRIBUTE_set1_data (int *,int,void const*,int) ;
 int X509_ATTRIBUTE_set1_object (int *,int const*) ;
 int X509_F_X509_ATTRIBUTE_CREATE_BY_OBJ ;
 int X509err (int ,int ) ;

X509_ATTRIBUTE *X509_ATTRIBUTE_create_by_OBJ(X509_ATTRIBUTE **attr,
                                             const ASN1_OBJECT *obj,
                                             int atrtype, const void *data,
                                             int len)
{
    X509_ATTRIBUTE *ret;

    if ((attr == ((void*)0)) || (*attr == ((void*)0))) {
        if ((ret = X509_ATTRIBUTE_new()) == ((void*)0)) {
            X509err(X509_F_X509_ATTRIBUTE_CREATE_BY_OBJ,
                    ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
    } else
        ret = *attr;

    if (!X509_ATTRIBUTE_set1_object(ret, obj))
        goto err;
    if (!X509_ATTRIBUTE_set1_data(ret, atrtype, data, len))
        goto err;

    if ((attr != ((void*)0)) && (*attr == ((void*)0)))
        *attr = ret;
    return ret;
 err:
    if ((attr == ((void*)0)) || (ret != *attr))
        X509_ATTRIBUTE_free(ret);
    return ((void*)0);
}
