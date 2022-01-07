
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ptr; } ;
typedef TYPE_1__ PX_Cipher ;
typedef int OSSLCipher ;


 int free_openssl_cipher (int *) ;
 int px_free (TYPE_1__*) ;

__attribute__((used)) static void
gen_ossl_free(PX_Cipher *c)
{
 OSSLCipher *od = (OSSLCipher *) c->ptr;

 free_openssl_cipher(od);
 px_free(c);
}
