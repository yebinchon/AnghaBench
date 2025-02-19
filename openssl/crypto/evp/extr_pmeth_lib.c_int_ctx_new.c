
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int type; int * engine; int * pmeth_engine; } ;
struct TYPE_13__ {char const* algorithm; char const* propquery; TYPE_1__ const* pmeth; TYPE_3__* pkey; int operation; int * engine; int * libctx; } ;
struct TYPE_12__ {scalar_t__ (* init ) (TYPE_2__*) ;} ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ EVP_PKEY_METHOD ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef TYPE_3__ EVP_PKEY ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 TYPE_1__* ENGINE_get_pkey_meth (int *,int) ;
 int * ENGINE_get_pkey_meth_engine (int) ;
 int ENGINE_init (int *) ;
 int ERR_R_ENGINE_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_INT_CTX_NEW ;
 int EVP_PKEY_CTX_free (TYPE_2__*) ;
 int EVP_PKEY_OP_UNDEFINED ;
 TYPE_1__* EVP_PKEY_meth_find (int) ;
 int EVP_PKEY_up_ref (TYPE_3__*) ;
 int EVP_R_UNSUPPORTED_ALGORITHM ;
 int EVPerr (int ,int ) ;
 char* OBJ_nid2sn (int) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int ossl_assert (int) ;
 scalar_t__ stub1 (TYPE_2__*) ;

__attribute__((used)) static EVP_PKEY_CTX *int_ctx_new(OPENSSL_CTX *libctx,
                                 EVP_PKEY *pkey, ENGINE *e,
                                 const char *name, const char *propquery,
                                 int id)
{
    EVP_PKEY_CTX *ret;
    const EVP_PKEY_METHOD *pmeth = ((void*)0);





    if (pkey == ((void*)0) && e == ((void*)0) && id == -1)
        goto common;



    if (id == -1) {
        if (pkey == ((void*)0))
            return 0;
        id = pkey->type;
    }
    if (!ossl_assert(e == ((void*)0) || name == ((void*)0)))
        return ((void*)0);
    if (e == ((void*)0))
        name = OBJ_nid2sn(id);
    propquery = ((void*)0);
    libctx = ((void*)0);


    if (e == ((void*)0) && pkey != ((void*)0))
        e = pkey->pmeth_engine != ((void*)0) ? pkey->pmeth_engine : pkey->engine;

    if (e) {
        if (!ENGINE_init(e)) {
            EVPerr(EVP_F_INT_CTX_NEW, ERR_R_ENGINE_LIB);
            return ((void*)0);
        }
    } else {
        e = ENGINE_get_pkey_meth_engine(id);
    }





    if (e)
        pmeth = ENGINE_get_pkey_meth(e, id);
    else

        pmeth = EVP_PKEY_meth_find(id);

    if (pmeth == ((void*)0)) {

        ENGINE_finish(e);

        EVPerr(EVP_F_INT_CTX_NEW, EVP_R_UNSUPPORTED_ALGORITHM);
        return ((void*)0);
    }


 common:
    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {

        ENGINE_finish(e);

        EVPerr(EVP_F_INT_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->libctx = libctx;
    ret->algorithm = name;
    ret->propquery = propquery;
    ret->engine = e;
    ret->pmeth = pmeth;
    ret->operation = EVP_PKEY_OP_UNDEFINED;
    ret->pkey = pkey;
    if (pkey != ((void*)0))
        EVP_PKEY_up_ref(pkey);

    if (pmeth != ((void*)0) && pmeth->init != ((void*)0)) {
        if (pmeth->init(ret) <= 0) {
            ret->pmeth = ((void*)0);
            EVP_PKEY_CTX_free(ret);
            return ((void*)0);
        }
    }

    return ret;
}
