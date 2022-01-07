
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ECPGtype_information_cache {int oid; int isarray; struct ECPGtype_information_cache* next; } ;
typedef enum ARRAY_TYPE { ____Placeholder_ARRAY_TYPE } ARRAY_TYPE ;


 scalar_t__ ecpg_alloc (int,int) ;

__attribute__((used)) static bool
ecpg_type_infocache_push(struct ECPGtype_information_cache **cache, int oid, enum ARRAY_TYPE isarray, int lineno)
{
 struct ECPGtype_information_cache *new_entry
 = (struct ECPGtype_information_cache *) ecpg_alloc(sizeof(struct ECPGtype_information_cache), lineno);

 if (new_entry == ((void*)0))
  return 0;

 new_entry->oid = oid;
 new_entry->isarray = isarray;
 new_entry->next = *cache;
 *cache = new_entry;
 return 1;
}
