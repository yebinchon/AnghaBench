
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X509V3_F_X509_PURPOSE_SET ;
 int X509V3_R_INVALID_PURPOSE ;
 int X509V3err (int ,int ) ;
 int X509_PURPOSE_get_by_id (int) ;

int X509_PURPOSE_set(int *p, int purpose)
{
    if (X509_PURPOSE_get_by_id(purpose) == -1) {
        X509V3err(X509V3_F_X509_PURPOSE_SET, X509V3_R_INVALID_PURPOSE);
        return 0;
    }
    *p = purpose;
    return 1;
}
