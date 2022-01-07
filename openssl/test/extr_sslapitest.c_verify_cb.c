
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;



__attribute__((used)) static int verify_cb(int preverify_ok, X509_STORE_CTX *x509_ctx)
{
    return 1;
}
