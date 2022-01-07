
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hashinstance; } ;
typedef TYPE_1__ PHP_SHA3_CTX ;
typedef int Keccak_HashInstance ;


 int SUCCESS ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int hash_sha3_copy(const void *ops, void *orig_context, void *dest_context)
{
 PHP_SHA3_CTX* orig = (PHP_SHA3_CTX*)orig_context;
 PHP_SHA3_CTX* dest = (PHP_SHA3_CTX*)dest_context;
 memcpy(dest->hashinstance, orig->hashinstance, sizeof(Keccak_HashInstance));
 return SUCCESS;
}
