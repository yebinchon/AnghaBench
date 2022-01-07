
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_1__* prev; TYPE_4__* next; int evp_ctx; } ;
struct TYPE_6__ {TYPE_4__* next; } ;
typedef TYPE_2__ OSSLCipher ;


 int EVP_CIPHER_CTX_free (int ) ;
 TYPE_4__* open_ciphers ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
free_openssl_cipher(OSSLCipher *od)
{
 EVP_CIPHER_CTX_free(od->evp_ctx);
 if (od->prev)
  od->prev->next = od->next;
 else
  open_ciphers = od->next;
 if (od->next)
  od->next->prev = od->prev;
 pfree(od);
}
