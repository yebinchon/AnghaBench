
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;



__attribute__((used)) static int verify_accept_cb(X509_STORE_CTX *ctx, void *arg) {
    return 1;
}
