
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t length; unsigned char const* data; } ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ EVP_PKEY ;
typedef TYPE_2__ ASN1_OCTET_STRING ;


 int EVP_F_EVP_PKEY_GET0_POLY1305 ;
 scalar_t__ EVP_PKEY_POLY1305 ;
 TYPE_2__* EVP_PKEY_get0 (TYPE_1__ const*) ;
 int EVP_R_EXPECTING_A_POLY1305_KEY ;
 int EVPerr (int ,int ) ;

const unsigned char *EVP_PKEY_get0_poly1305(const EVP_PKEY *pkey, size_t *len)
{
    ASN1_OCTET_STRING *os = ((void*)0);
    if (pkey->type != EVP_PKEY_POLY1305) {
        EVPerr(EVP_F_EVP_PKEY_GET0_POLY1305, EVP_R_EXPECTING_A_POLY1305_KEY);
        return ((void*)0);
    }
    os = EVP_PKEY_get0(pkey);
    *len = os->length;
    return os->data;
}
