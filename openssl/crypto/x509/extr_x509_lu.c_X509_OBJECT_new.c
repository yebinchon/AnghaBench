
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ X509_OBJECT ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int X509_F_X509_OBJECT_NEW ;
 int X509_LU_NONE ;
 int X509err (int ,int ) ;

X509_OBJECT *X509_OBJECT_new(void)
{
    X509_OBJECT *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        X509err(X509_F_X509_OBJECT_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->type = X509_LU_NONE;
    return ret;
}
