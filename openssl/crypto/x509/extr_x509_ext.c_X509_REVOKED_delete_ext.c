
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extensions; } ;
typedef TYPE_1__ X509_REVOKED ;
typedef int X509_EXTENSION ;


 int * X509v3_delete_ext (int ,int) ;

X509_EXTENSION *X509_REVOKED_delete_ext(X509_REVOKED *x, int loc)
{
    return X509v3_delete_ext(x->extensions, loc);
}
