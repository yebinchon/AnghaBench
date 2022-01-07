
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;


 int X509_STORE_CTX_purpose_inherit (int *,int ,int ,int) ;

int X509_STORE_CTX_set_trust(X509_STORE_CTX *ctx, int trust)
{




    return X509_STORE_CTX_purpose_inherit(ctx, 0, 0, trust);
}
