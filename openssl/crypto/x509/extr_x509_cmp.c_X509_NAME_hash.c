
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int canon_enclen; int canon_enc; } ;
typedef TYPE_1__ X509_NAME ;


 int EVP_Digest (int ,int ,unsigned char*,int *,int ,int *) ;
 int EVP_sha1 () ;
 int SHA_DIGEST_LENGTH ;
 int i2d_X509_NAME (TYPE_1__*,int *) ;

unsigned long X509_NAME_hash(X509_NAME *x)
{
    unsigned long ret = 0;
    unsigned char md[SHA_DIGEST_LENGTH];


    i2d_X509_NAME(x, ((void*)0));
    if (!EVP_Digest(x->canon_enc, x->canon_enclen, md, ((void*)0), EVP_sha1(),
                    ((void*)0)))
        return 0;

    ret = (((unsigned long)md[0]) | ((unsigned long)md[1] << 8L) |
           ((unsigned long)md[2] << 16L) | ((unsigned long)md[3] << 24L)
        ) & 0xffffffffL;
    return ret;
}
