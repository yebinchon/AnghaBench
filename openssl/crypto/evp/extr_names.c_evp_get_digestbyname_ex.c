
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;
typedef int EVP_MD ;


 int OBJ_NAME_TYPE_MD_METH ;
 scalar_t__ OBJ_NAME_get (char const*,int ) ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_init_crypto (int ,int *) ;
 int digest_from_name ;
 int ossl_namemap_doall_names (int *,int,int ,int const**) ;
 int ossl_namemap_name2num (int *,char const*) ;
 int * ossl_namemap_stored (int *) ;

const EVP_MD *evp_get_digestbyname_ex(OPENSSL_CTX *libctx, const char *name)
{
    const EVP_MD *dp;
    OSSL_NAMEMAP *namemap;
    int id;

    if (!OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_DIGESTS, ((void*)0)))
        return ((void*)0);

    dp = (const EVP_MD *)OBJ_NAME_get(name, OBJ_NAME_TYPE_MD_METH);

    if (dp != ((void*)0))
        return dp;







    namemap = ossl_namemap_stored(libctx);
    id = ossl_namemap_name2num(namemap, name);
    if (id == 0)
        return ((void*)0);

    ossl_namemap_doall_names(namemap, id, digest_from_name, &dp);

    return dp;
}
