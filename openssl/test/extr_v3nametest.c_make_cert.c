
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int X509_free (int *) ;
 int * X509_new () ;
 int X509_set_version (int *,int) ;

__attribute__((used)) static X509 *make_cert(void)
{
    X509 *crt = ((void*)0);

    if (!TEST_ptr(crt = X509_new()))
        return ((void*)0);
    if (!TEST_true(X509_set_version(crt, 2))) {
        X509_free(crt);
        return ((void*)0);
    }
    return crt;
}
