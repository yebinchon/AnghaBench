
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;
typedef int EVP_CIPHER ;


 int OBJ_NAME_TYPE_CIPHER_METH ;
 scalar_t__ OBJ_NAME_get (char const*,int ) ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_init_crypto (int ,int *) ;
 int cipher_from_name ;
 int ossl_namemap_doall_names (int *,int,int ,int const**) ;
 int ossl_namemap_name2num (int *,char const*) ;
 int * ossl_namemap_stored (int *) ;

const EVP_CIPHER *evp_get_cipherbyname_ex(OPENSSL_CTX *libctx, const char *name)
{
    const EVP_CIPHER *cp;
    OSSL_NAMEMAP *namemap;
    int id;

    if (!OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_CIPHERS, ((void*)0)))
        return ((void*)0);

    cp = (const EVP_CIPHER *)OBJ_NAME_get(name, OBJ_NAME_TYPE_CIPHER_METH);

    if (cp != ((void*)0))
        return cp;







    namemap = ossl_namemap_stored(libctx);
    id = ossl_namemap_name2num(namemap, name);
    if (id == 0)
        return ((void*)0);

    ossl_namemap_doall_names(namemap, id, cipher_from_name, &cp);

    return cp;
}
