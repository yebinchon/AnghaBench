
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* seed_key; int * default_N; int * default_g; } ;
typedef int SRP_user_pwd ;
typedef TYPE_1__ SRP_VBASE ;
typedef int EVP_MD_CTX ;


 int BN_bin2bn (unsigned char*,int,int *) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,char*,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_sha1 () ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int) ;
 int SHA_DIGEST_LENGTH ;
 int SRP_user_pwd_free (int *) ;
 int * SRP_user_pwd_new () ;
 scalar_t__ SRP_user_pwd_set0_sv (int *,int ,int ) ;
 int SRP_user_pwd_set1_ids (int *,char*,int *) ;
 int SRP_user_pwd_set_gN (int *,int *,int *) ;
 int * find_user (TYPE_1__*,char*) ;
 int * srp_user_pwd_dup (int *) ;
 int strlen (char*) ;

SRP_user_pwd *SRP_VBASE_get1_by_user(SRP_VBASE *vb, char *username)
{
    SRP_user_pwd *user;
    unsigned char digv[SHA_DIGEST_LENGTH];
    unsigned char digs[SHA_DIGEST_LENGTH];
    EVP_MD_CTX *ctxt = ((void*)0);

    if (vb == ((void*)0))
        return ((void*)0);

    if ((user = find_user(vb, username)) != ((void*)0))
        return srp_user_pwd_dup(user);

    if ((vb->seed_key == ((void*)0)) ||
        (vb->default_g == ((void*)0)) || (vb->default_N == ((void*)0)))
        return ((void*)0);



    if ((user = SRP_user_pwd_new()) == ((void*)0))
        return ((void*)0);

    SRP_user_pwd_set_gN(user, vb->default_g, vb->default_N);

    if (!SRP_user_pwd_set1_ids(user, username, ((void*)0)))
        goto err;

    if (RAND_priv_bytes(digv, SHA_DIGEST_LENGTH) <= 0)
        goto err;
    ctxt = EVP_MD_CTX_new();
    if (ctxt == ((void*)0)
        || !EVP_DigestInit_ex(ctxt, EVP_sha1(), ((void*)0))
        || !EVP_DigestUpdate(ctxt, vb->seed_key, strlen(vb->seed_key))
        || !EVP_DigestUpdate(ctxt, username, strlen(username))
        || !EVP_DigestFinal_ex(ctxt, digs, ((void*)0)))
        goto err;
    EVP_MD_CTX_free(ctxt);
    ctxt = ((void*)0);
    if (SRP_user_pwd_set0_sv(user,
                               BN_bin2bn(digs, SHA_DIGEST_LENGTH, ((void*)0)),
                               BN_bin2bn(digv, SHA_DIGEST_LENGTH, ((void*)0))))
        return user;

 err:
    EVP_MD_CTX_free(ctxt);
    SRP_user_pwd_free(user);
    return ((void*)0);
}
