
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ owner; struct TYPE_5__* next; } ;
typedef scalar_t__ ResourceReleasePhase ;
typedef TYPE_1__ OSSLCipher ;


 scalar_t__ CurrentResourceOwner ;
 scalar_t__ RESOURCE_RELEASE_AFTER_LOCKS ;
 int WARNING ;
 int elog (int ,char*,TYPE_1__*) ;
 int free_openssl_cipher (TYPE_1__*) ;
 TYPE_1__* open_ciphers ;

__attribute__((used)) static void
cipher_free_callback(ResourceReleasePhase phase,
      bool isCommit,
      bool isTopLevel,
      void *arg)
{
 OSSLCipher *curr;
 OSSLCipher *next;

 if (phase != RESOURCE_RELEASE_AFTER_LOCKS)
  return;

 next = open_ciphers;
 while (next)
 {
  curr = next;
  next = curr->next;

  if (curr->owner == CurrentResourceOwner)
  {
   if (isCommit)
    elog(WARNING, "pgcrypto cipher reference leak: cipher %p still referenced", curr);
   free_openssl_cipher(curr);
  }
 }
}
