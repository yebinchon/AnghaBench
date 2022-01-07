
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bytes; scalar_t__ modified; } ;
typedef TYPE_2__ X509_NAME ;
struct TYPE_5__ {int length; int data; } ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int memcpy (unsigned char*,int ,int) ;
 int x509_name_canon (TYPE_2__*) ;
 int x509_name_encode (TYPE_2__*) ;

__attribute__((used)) static int x509_name_ex_i2d(const ASN1_VALUE **val, unsigned char **out,
                            const ASN1_ITEM *it, int tag, int aclass)
{
    int ret;
    X509_NAME *a = (X509_NAME *)*val;

    if (a->modified) {
        ret = x509_name_encode(a);
        if (ret < 0)
            return ret;
        ret = x509_name_canon(a);
        if (ret < 0)
            return ret;
    }
    ret = a->bytes->length;
    if (out != ((void*)0)) {
        memcpy(*out, a->bytes->data, ret);
        *out += ret;
    }
    return ret;
}
