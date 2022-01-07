
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int) ;
 int HASH_ENTER ;
 scalar_t__ OidIsValid (int ) ;
 int enum_blacklist ;
 int hash_search (int ,int ,int ,int *) ;
 int init_enum_blacklist () ;

void
RestoreEnumBlacklist(void *space)
{
 Oid *serialized = (Oid *) space;

 Assert(!enum_blacklist);






 if (!OidIsValid(*serialized))
  return;


 init_enum_blacklist();
 do
 {
  hash_search(enum_blacklist, serialized++, HASH_ENTER, ((void*)0));
 } while (OidIsValid(*serialized));
}
