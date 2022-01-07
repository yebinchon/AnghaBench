
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;


 int X509_STORE_get0_param (int *) ;
 int * X509_STORE_new () ;
 int X509_VERIFY_PARAM_set_flags (int ,int) ;

__attribute__((used)) static X509_STORE *X509_STORE_new_1(void) {
    X509_STORE *store = X509_STORE_new();

    if (store != ((void*)0))
        X509_VERIFY_PARAM_set_flags(X509_STORE_get0_param(store), 1);
    return store;
}
