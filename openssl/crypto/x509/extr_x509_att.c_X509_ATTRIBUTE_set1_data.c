
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int set; int object; } ;
typedef TYPE_1__ X509_ATTRIBUTE ;
struct TYPE_10__ {int type; } ;
typedef int ASN1_TYPE ;
typedef TYPE_2__ ASN1_STRING ;


 int ASN1_STRING_free (TYPE_2__*) ;
 int ASN1_STRING_set (TYPE_2__*,void const*,int) ;
 TYPE_2__* ASN1_STRING_set_by_NID (int *,void const*,int,int,int ) ;
 TYPE_2__* ASN1_STRING_type_new (int) ;
 int ASN1_TYPE_free (int *) ;
 int * ASN1_TYPE_new () ;
 int ASN1_TYPE_set (int *,int,TYPE_2__*) ;
 int ASN1_TYPE_set1 (int *,int,void const*) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int MBSTRING_FLAG ;
 int OBJ_obj2nid (int ) ;
 int X509_F_X509_ATTRIBUTE_SET1_DATA ;
 int X509err (int ,int ) ;
 int sk_ASN1_TYPE_push (int ,int *) ;

int X509_ATTRIBUTE_set1_data(X509_ATTRIBUTE *attr, int attrtype,
                             const void *data, int len)
{
    ASN1_TYPE *ttmp = ((void*)0);
    ASN1_STRING *stmp = ((void*)0);
    int atype = 0;
    if (!attr)
        return 0;
    if (attrtype & MBSTRING_FLAG) {
        stmp = ASN1_STRING_set_by_NID(((void*)0), data, len, attrtype,
                                      OBJ_obj2nid(attr->object));
        if (!stmp) {
            X509err(X509_F_X509_ATTRIBUTE_SET1_DATA, ERR_R_ASN1_LIB);
            return 0;
        }
        atype = stmp->type;
    } else if (len != -1) {
        if ((stmp = ASN1_STRING_type_new(attrtype)) == ((void*)0))
            goto err;
        if (!ASN1_STRING_set(stmp, data, len))
            goto err;
        atype = attrtype;
    }





    if (attrtype == 0) {
        ASN1_STRING_free(stmp);
        return 1;
    }
    if ((ttmp = ASN1_TYPE_new()) == ((void*)0))
        goto err;
    if ((len == -1) && !(attrtype & MBSTRING_FLAG)) {
        if (!ASN1_TYPE_set1(ttmp, attrtype, data))
            goto err;
    } else {
        ASN1_TYPE_set(ttmp, atype, stmp);
        stmp = ((void*)0);
    }
    if (!sk_ASN1_TYPE_push(attr->set, ttmp))
        goto err;
    return 1;
 err:
    X509err(X509_F_X509_ATTRIBUTE_SET1_DATA, ERR_R_MALLOC_FAILURE);
    ASN1_TYPE_free(ttmp);
    ASN1_STRING_free(stmp);
    return 0;
}
