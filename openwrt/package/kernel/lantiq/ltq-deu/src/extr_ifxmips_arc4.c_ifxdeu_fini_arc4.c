
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_alg (int *) ;
 int ifxdeu_arc4_alg ;
 int ifxdeu_ecb_arc4_alg ;

void ifxdeu_fini_arc4(void)
{
        crypto_unregister_alg (&ifxdeu_arc4_alg);
        crypto_unregister_alg (&ifxdeu_ecb_arc4_alg);


}
