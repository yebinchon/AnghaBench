
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned char uint8_t ;
struct TYPE_8__ {TYPE_5__* digest; TYPE_3__* algor; } ;
typedef TYPE_2__ X509_SIG ;
struct TYPE_9__ {TYPE_4__* parameter; int * algorithm; } ;
typedef TYPE_3__ X509_ALGOR ;
struct TYPE_11__ {unsigned char* data; unsigned int length; } ;
struct TYPE_7__ {int * ptr; } ;
struct TYPE_10__ {TYPE_1__ value; int type; } ;
typedef TYPE_4__ ASN1_TYPE ;
typedef TYPE_5__ ASN1_OCTET_STRING ;


 scalar_t__ OBJ_length (int *) ;
 int * OBJ_nid2obj (int) ;
 int RSA_F_ENCODE_PKCS1 ;
 int RSA_R_THE_ASN1_OBJECT_IDENTIFIER_IS_NOT_KNOWN_FOR_THIS_MD ;
 int RSA_R_UNKNOWN_ALGORITHM_TYPE ;
 int RSAerr (int ,int ) ;
 int V_ASN1_NULL ;
 int i2d_X509_SIG (TYPE_2__*,unsigned char**) ;

__attribute__((used)) static int encode_pkcs1(unsigned char **out, int *out_len, int type,
                        const unsigned char *m, unsigned int m_len)
{
    X509_SIG sig;
    X509_ALGOR algor;
    ASN1_TYPE parameter;
    ASN1_OCTET_STRING digest;
    uint8_t *der = ((void*)0);
    int len;

    sig.algor = &algor;
    sig.algor->algorithm = OBJ_nid2obj(type);
    if (sig.algor->algorithm == ((void*)0)) {
        RSAerr(RSA_F_ENCODE_PKCS1, RSA_R_UNKNOWN_ALGORITHM_TYPE);
        return 0;
    }
    if (OBJ_length(sig.algor->algorithm) == 0) {
        RSAerr(RSA_F_ENCODE_PKCS1,
               RSA_R_THE_ASN1_OBJECT_IDENTIFIER_IS_NOT_KNOWN_FOR_THIS_MD);
        return 0;
    }
    parameter.type = V_ASN1_NULL;
    parameter.value.ptr = ((void*)0);
    sig.algor->parameter = &parameter;

    sig.digest = &digest;
    sig.digest->data = (unsigned char *)m;
    sig.digest->length = m_len;

    len = i2d_X509_SIG(&sig, &der);
    if (len < 0)
        return 0;

    *out = der;
    *out_len = len;
    return 1;
}
