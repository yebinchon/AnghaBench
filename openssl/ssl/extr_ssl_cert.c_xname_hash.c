
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;


 unsigned long X509_NAME_hash (int *) ;

__attribute__((used)) static unsigned long xname_hash(const X509_NAME *a)
{
    return X509_NAME_hash((X509_NAME *)a);
}
