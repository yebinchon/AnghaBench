
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int AFALG_F_BIND_AFALG ;
 int AFALG_R_INIT_FAILED ;
 int AFALGerr (int ,int ) ;
 int ENGINE_set_ciphers (int *,int ) ;
 int ENGINE_set_destroy_function (int *,int ) ;
 int ENGINE_set_finish_function (int *,int ) ;
 int ENGINE_set_id (int *,int ) ;
 int ENGINE_set_init_function (int *,int ) ;
 int ENGINE_set_name (int *,int ) ;
 int ERR_load_AFALG_strings () ;
 unsigned short OSSL_NELEM (int *) ;
 int * afalg_aes_cbc (int ) ;
 int * afalg_cipher_nids ;
 int afalg_ciphers ;
 int afalg_destroy ;
 int afalg_finish ;
 int afalg_init ;
 int engine_afalg_id ;
 int engine_afalg_name ;

__attribute__((used)) static int bind_afalg(ENGINE *e)
{

    unsigned short i;
    ERR_load_AFALG_strings();

    if (!ENGINE_set_id(e, engine_afalg_id)
        || !ENGINE_set_name(e, engine_afalg_name)
        || !ENGINE_set_destroy_function(e, afalg_destroy)
        || !ENGINE_set_init_function(e, afalg_init)
        || !ENGINE_set_finish_function(e, afalg_finish)) {
        AFALGerr(AFALG_F_BIND_AFALG, AFALG_R_INIT_FAILED);
        return 0;
    }






    for(i = 0; i < OSSL_NELEM(afalg_cipher_nids); i++) {
        if (afalg_aes_cbc(afalg_cipher_nids[i]) == ((void*)0)) {
            AFALGerr(AFALG_F_BIND_AFALG, AFALG_R_INIT_FAILED);
            return 0;
        }
    }

    if (!ENGINE_set_ciphers(e, afalg_ciphers)) {
        AFALGerr(AFALG_F_BIND_AFALG, AFALG_R_INIT_FAILED);
        return 0;
    }

    return 1;
}
