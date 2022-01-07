
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 scalar_t__ ENGINE_set_DH (int *,int ) ;
 scalar_t__ ENGINE_set_DSA (int *,int ) ;
 scalar_t__ ENGINE_set_EC (int *,int ) ;
 scalar_t__ ENGINE_set_RSA (int *,int ) ;
 scalar_t__ ENGINE_set_ciphers (int *,int ) ;
 int ENGINE_set_cmd_defns (int *,int ) ;
 int ENGINE_set_ctrl_function (int *,int ) ;
 int ENGINE_set_destroy_function (int *,int ) ;
 scalar_t__ ENGINE_set_digests (int *,int ) ;
 int ENGINE_set_id (int *,int ) ;
 int ENGINE_set_name (int *,char*) ;
 int devcrypto_ciphers ;
 int devcrypto_cmds ;
 int devcrypto_ctrl ;
 int devcrypto_dh ;
 int devcrypto_digests ;
 int devcrypto_dsa ;
 int devcrypto_ec ;
 int devcrypto_rsa ;
 int devcrypto_unload ;
 int engine_devcrypto_id ;
 int prepare_cipher_methods () ;
 int prepare_digest_methods () ;

__attribute__((used)) static int bind_devcrypto(ENGINE *e) {

    if (!ENGINE_set_id(e, engine_devcrypto_id)
        || !ENGINE_set_name(e, "/dev/crypto engine")
        || !ENGINE_set_destroy_function(e, devcrypto_unload)
        || !ENGINE_set_cmd_defns(e, devcrypto_cmds)
        || !ENGINE_set_ctrl_function(e, devcrypto_ctrl))
        return 0;

    prepare_cipher_methods();




    return (ENGINE_set_ciphers(e, devcrypto_ciphers)
        );
}
