
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_1__* prev; TYPE_4__* next; int ctx; } ;
struct TYPE_6__ {TYPE_4__* next; } ;
typedef TYPE_2__ OSSLDigest ;


 int EVP_MD_CTX_destroy (int ) ;
 TYPE_4__* open_digests ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
free_openssl_digest(OSSLDigest *digest)
{
 EVP_MD_CTX_destroy(digest->ctx);
 if (digest->prev)
  digest->prev->next = digest->next;
 else
  open_digests = digest->next;
 if (digest->next)
  digest->next->prev = digest->prev;
 pfree(digest);
}
