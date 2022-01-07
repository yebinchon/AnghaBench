
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algorithm2; } ;
typedef TYPE_1__ SSL_CIPHER ;
typedef int EVP_MD ;


 int SSL_HANDSHAKE_MAC_MASK ;
 int SSL_MD_NUM_IDX ;
 int const** ssl_digest_methods ;

const EVP_MD *SSL_CIPHER_get_handshake_digest(const SSL_CIPHER *c)
{
    int idx = c->algorithm2 & SSL_HANDSHAKE_MAC_MASK;

    if (idx < 0 || idx >= SSL_MD_NUM_IDX)
        return ((void*)0);
    return ssl_digest_methods[idx];
}
