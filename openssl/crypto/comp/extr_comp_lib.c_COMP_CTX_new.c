
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* meth; } ;
struct TYPE_8__ {int (* init ) (TYPE_2__*) ;} ;
typedef TYPE_1__ COMP_METHOD ;
typedef TYPE_2__ COMP_CTX ;


 int COMP_F_COMP_CTX_NEW ;
 int COMPerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int stub1 (TYPE_2__*) ;

COMP_CTX *COMP_CTX_new(COMP_METHOD *meth)
{
    COMP_CTX *ret;

    if ((ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        COMPerr(COMP_F_COMP_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->meth = meth;
    if ((ret->meth->init != ((void*)0)) && !ret->meth->init(ret)) {
        OPENSSL_free(ret);
        ret = ((void*)0);
    }
    return ret;
}
