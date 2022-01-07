
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* init ) (int *) ;} ;
typedef TYPE_1__ CONF_METHOD ;
typedef int CONF ;


 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (int) ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static CONF *def_create(CONF_METHOD *meth)
{
    CONF *ret;

    ret = OPENSSL_malloc(sizeof(*ret));
    if (ret != ((void*)0))
        if (meth->init(ret) == 0) {
            OPENSSL_free(ret);
            ret = ((void*)0);
        }
    return ret;
}
