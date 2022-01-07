
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_alg (int *) ;
 int ifxdeu_cbc_des3_ede_alg ;
 int ifxdeu_cbc_des_alg ;
 int ifxdeu_des3_ede_alg ;
 int ifxdeu_des_alg ;
 int ifxdeu_ecb_des3_ede_alg ;
 int ifxdeu_ecb_des_alg ;

void ifxdeu_fini_des (void)
{
        crypto_unregister_alg (&ifxdeu_des_alg);
        crypto_unregister_alg (&ifxdeu_ecb_des_alg);
        crypto_unregister_alg (&ifxdeu_cbc_des_alg);
        crypto_unregister_alg (&ifxdeu_des3_ede_alg);
        crypto_unregister_alg (&ifxdeu_ecb_des3_ede_alg);
        crypto_unregister_alg (&ifxdeu_cbc_des3_ede_alg);

}
