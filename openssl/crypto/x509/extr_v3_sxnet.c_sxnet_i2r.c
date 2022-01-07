
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
struct TYPE_6__ {int ids; int version; } ;
struct TYPE_5__ {int user; int zone; } ;
typedef TYPE_1__ SXNETID ;
typedef TYPE_2__ SXNET ;
typedef int BIO ;


 long ASN1_INTEGER_get (int ) ;
 int ASN1_STRING_print (int *,int ) ;
 int BIO_printf (int *,char*,int,char*,...) ;
 int OPENSSL_free (char*) ;
 char* i2s_ASN1_INTEGER (int *,int ) ;
 int sk_SXNETID_num (int ) ;
 TYPE_1__* sk_SXNETID_value (int ,int) ;

__attribute__((used)) static int sxnet_i2r(X509V3_EXT_METHOD *method, SXNET *sx, BIO *out,
                     int indent)
{
    long v;
    char *tmp;
    SXNETID *id;
    int i;
    v = ASN1_INTEGER_get(sx->version);
    BIO_printf(out, "%*sVersion: %ld (0x%lX)", indent, "", v + 1, v);
    for (i = 0; i < sk_SXNETID_num(sx->ids); i++) {
        id = sk_SXNETID_value(sx->ids, i);
        tmp = i2s_ASN1_INTEGER(((void*)0), id->zone);
        BIO_printf(out, "\n%*sZone: %s, User: ", indent, "", tmp);
        OPENSSL_free(tmp);
        ASN1_STRING_print(out, id->user);
    }
    return 1;
}
