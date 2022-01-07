
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hctl; int alloc; int max_dsize; int dsize; } ;
typedef int HTAB ;
typedef int HASHHDR ;
typedef TYPE_1__ HASHCTL ;


 int HASH_ALLOC ;
 int HASH_ATTACH ;
 int HASH_DIRSIZE ;
 int HASH_SHARED_MEM ;
 int ShmemAllocNoError ;
 void* ShmemInitStruct (char const*,int ,int*) ;
 int * hash_create (char const*,long,TYPE_1__*,int) ;
 int hash_get_shared_size (TYPE_1__*,int) ;
 int hash_select_dirsize (long) ;

HTAB *
ShmemInitHash(const char *name,
     long init_size,
     long max_size,
     HASHCTL *infoP,
     int hash_flags)
{
 bool found;
 void *location;
 infoP->dsize = infoP->max_dsize = hash_select_dirsize(max_size);
 infoP->alloc = ShmemAllocNoError;
 hash_flags |= HASH_SHARED_MEM | HASH_ALLOC | HASH_DIRSIZE;


 location = ShmemInitStruct(name,
          hash_get_shared_size(infoP, hash_flags),
          &found);





 if (found)
  hash_flags |= HASH_ATTACH;


 infoP->hctl = (HASHHDR *) location;

 return hash_create(name, init_size, infoP, hash_flags);
}
