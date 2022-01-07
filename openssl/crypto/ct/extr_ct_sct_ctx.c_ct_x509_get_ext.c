
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 scalar_t__ X509_get_ext_by_NID (int *,int,int) ;

__attribute__((used)) static int ct_x509_get_ext(X509 *cert, int nid, int *is_duplicated)
{
    int ret = X509_get_ext_by_NID(cert, nid, -1);

    if (is_duplicated != ((void*)0))
        *is_duplicated = ret >= 0 && X509_get_ext_by_NID(cert, nid, ret) >= 0;

    return ret;
}
