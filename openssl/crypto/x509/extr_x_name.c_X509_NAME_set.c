
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const X509_NAME ;


 int const* X509_NAME_dup (int const*) ;
 int X509_NAME_free (int const*) ;

int X509_NAME_set(X509_NAME **xn, const X509_NAME *name)
{
    X509_NAME *name_copy;

    if (*xn == name)
        return *xn != ((void*)0);
    if ((name_copy = X509_NAME_dup(name)) == ((void*)0))
        return 0;
    X509_NAME_free(*xn);
    *xn = name_copy;
    return 1;
}
