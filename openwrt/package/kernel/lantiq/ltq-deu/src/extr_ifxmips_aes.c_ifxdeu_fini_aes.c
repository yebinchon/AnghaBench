
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_alg (int *) ;
 int ifxdeu_aes_alg ;
 int ifxdeu_cbc_aes_alg ;
 int ifxdeu_ctr_basic_aes_alg ;
 int ifxdeu_ctr_rfc3686_aes_alg ;
 int ifxdeu_ecb_aes_alg ;

void ifxdeu_fini_aes (void)
{
    crypto_unregister_alg (&ifxdeu_aes_alg);
    crypto_unregister_alg (&ifxdeu_ecb_aes_alg);
    crypto_unregister_alg (&ifxdeu_cbc_aes_alg);
    crypto_unregister_alg (&ifxdeu_ctr_basic_aes_alg);
    crypto_unregister_alg (&ifxdeu_ctr_rfc3686_aes_alg);

}
