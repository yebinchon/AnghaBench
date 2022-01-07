
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ EC_KEY_METHOD ;


 int EC_KEY_METHOD_DYNAMIC ;
 TYPE_1__* OPENSSL_zalloc (int) ;

EC_KEY_METHOD *EC_KEY_METHOD_new(const EC_KEY_METHOD *meth)
{
    EC_KEY_METHOD *ret = OPENSSL_zalloc(sizeof(*meth));

    if (ret == ((void*)0))
        return ((void*)0);
    if (meth != ((void*)0))
        *ret = *meth;
    ret->flags |= EC_KEY_METHOD_DYNAMIC;
    return ret;
}
