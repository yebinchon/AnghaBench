
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int HASH_FIND ;
 int * enum_blacklist ;
 int hash_search (int *,int *,int ,int*) ;

bool
EnumBlacklisted(Oid enum_id)
{
 bool found;


 if (enum_blacklist == ((void*)0))
  return 0;


 (void) hash_search(enum_blacklist, &enum_id, HASH_FIND, &found);
 return found;
}
