
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seedmask ;
typedef int EVP_MD ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_Digest (void*,int,unsigned char*,int *,int const*,int *) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_size (int const*) ;
 int * EVP_sha1 () ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 scalar_t__ PKCS1_MGF1 (unsigned char*,int,unsigned char*,int,int const*) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1 ;
 int RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE ;
 int RSA_R_KEY_SIZE_TOO_SMALL ;
 int RSAerr (int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;

int RSA_padding_add_PKCS1_OAEP_mgf1(unsigned char *to, int tlen,
                                    const unsigned char *from, int flen,
                                    const unsigned char *param, int plen,
                                    const EVP_MD *md, const EVP_MD *mgf1md)
{
    int rv = 0;
    int i, emlen = tlen - 1;
    unsigned char *db, *seed;
    unsigned char *dbmask = ((void*)0);
    unsigned char seedmask[EVP_MAX_MD_SIZE];
    int mdlen, dbmask_len = 0;

    if (md == ((void*)0))
        md = EVP_sha1();
    if (mgf1md == ((void*)0))
        mgf1md = md;

    mdlen = EVP_MD_size(md);


    if (flen > emlen - 2 * mdlen - 1) {
        RSAerr(RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1,
               RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE);
        return 0;
    }

    if (emlen < 2 * mdlen + 1) {
        RSAerr(RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1,
               RSA_R_KEY_SIZE_TOO_SMALL);
        return 0;
    }


    to[0] = 0;
    seed = to + 1;
    db = to + mdlen + 1;


    if (!EVP_Digest((void *)param, plen, db, ((void*)0), md, ((void*)0)))
        goto err;

    memset(db + mdlen, 0, emlen - flen - 2 * mdlen - 1);

    db[emlen - flen - mdlen - 1] = 0x01;
    memcpy(db + emlen - flen - mdlen, from, (unsigned int)flen);

    if (RAND_bytes(seed, mdlen) <= 0)
        goto err;

    dbmask_len = emlen - mdlen;
    dbmask = OPENSSL_malloc(dbmask_len);
    if (dbmask == ((void*)0)) {
        RSAerr(RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (PKCS1_MGF1(dbmask, dbmask_len, seed, mdlen, mgf1md) < 0)
        goto err;

    for (i = 0; i < dbmask_len; i++)
        db[i] ^= dbmask[i];


    if (PKCS1_MGF1(seedmask, mdlen, db, dbmask_len, mgf1md) < 0)
        goto err;

    for (i = 0; i < mdlen; i++)
        seed[i] ^= seedmask[i];
    rv = 1;

 err:
    OPENSSL_cleanse(seedmask, sizeof(seedmask));
    OPENSSL_clear_free(dbmask, dbmask_len);
    return rv;
}
