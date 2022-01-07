
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_7__ {int (* i2d ) (void*,unsigned char**) ;scalar_t__ it; } ;
typedef TYPE_1__ X509V3_EXT_METHOD ;
struct TYPE_8__ {unsigned char* data; int length; } ;
typedef TYPE_2__ ASN1_OCTET_STRING ;


 int ASN1_ITEM_ptr (scalar_t__) ;
 int ASN1_OCTET_STRING_free (TYPE_2__*) ;
 TYPE_2__* ASN1_OCTET_STRING_new () ;
 int ASN1_item_i2d (void*,unsigned char**,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int X509V3_F_DO_EXT_I2D ;
 int X509V3err (int ,int ) ;
 int * X509_EXTENSION_create_by_NID (int *,int,int,TYPE_2__*) ;
 int stub1 (void*,unsigned char**) ;
 int stub2 (void*,unsigned char**) ;

__attribute__((used)) static X509_EXTENSION *do_ext_i2d(const X509V3_EXT_METHOD *method,
                                  int ext_nid, int crit, void *ext_struc)
{
    unsigned char *ext_der = ((void*)0);
    int ext_len;
    ASN1_OCTET_STRING *ext_oct = ((void*)0);
    X509_EXTENSION *ext;

    if (method->it) {
        ext_der = ((void*)0);
        ext_len =
            ASN1_item_i2d(ext_struc, &ext_der, ASN1_ITEM_ptr(method->it));
        if (ext_len < 0)
            goto merr;
    } else {
        unsigned char *p;

        ext_len = method->i2d(ext_struc, ((void*)0));
        if ((ext_der = OPENSSL_malloc(ext_len)) == ((void*)0))
            goto merr;
        p = ext_der;
        method->i2d(ext_struc, &p);
    }
    if ((ext_oct = ASN1_OCTET_STRING_new()) == ((void*)0))
        goto merr;
    ext_oct->data = ext_der;
    ext_der = ((void*)0);
    ext_oct->length = ext_len;

    ext = X509_EXTENSION_create_by_NID(((void*)0), ext_nid, crit, ext_oct);
    if (!ext)
        goto merr;
    ASN1_OCTET_STRING_free(ext_oct);

    return ext;

 merr:
    X509V3err(X509V3_F_DO_EXT_I2D, ERR_R_MALLOC_FAILURE);
    OPENSSL_free(ext_der);
    ASN1_OCTET_STRING_free(ext_oct);
    return ((void*)0);

}
