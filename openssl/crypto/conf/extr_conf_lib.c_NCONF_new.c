
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * (* create ) (TYPE_1__*) ;} ;
typedef TYPE_1__ CONF_METHOD ;
typedef int CONF ;


 int CONF_F_NCONF_NEW ;
 int CONFerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* NCONF_default () ;
 int * stub1 (TYPE_1__*) ;

CONF *NCONF_new(CONF_METHOD *meth)
{
    CONF *ret;

    if (meth == ((void*)0))
        meth = NCONF_default();

    ret = meth->create(meth);
    if (ret == ((void*)0)) {
        CONFerr(CONF_F_NCONF_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    return ret;
}
