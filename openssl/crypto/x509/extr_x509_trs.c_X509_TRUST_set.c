
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X509_F_X509_TRUST_SET ;
 int X509_R_INVALID_TRUST ;
 int X509_TRUST_get_by_id (int) ;
 int X509err (int ,int ) ;

int X509_TRUST_set(int *t, int trust)
{
    if (X509_TRUST_get_by_id(trust) == -1) {
        X509err(X509_F_X509_TRUST_SET, X509_R_INVALID_TRUST);
        return 0;
    }
    *t = trust;
    return 1;
}
