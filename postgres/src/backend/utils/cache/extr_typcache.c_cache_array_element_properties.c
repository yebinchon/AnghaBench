
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int hash_extended_proc; int hash_proc; int cmp_proc; int eq_opr; int type_id; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int Oid ;


 scalar_t__ OidIsValid (int ) ;
 int TCFLAGS_CHECKED_ELEM_PROPERTIES ;
 int TCFLAGS_HAVE_ELEM_COMPARE ;
 int TCFLAGS_HAVE_ELEM_EQUALITY ;
 int TCFLAGS_HAVE_ELEM_EXTENDED_HASHING ;
 int TCFLAGS_HAVE_ELEM_HASHING ;
 int TYPECACHE_CMP_PROC ;
 int TYPECACHE_EQ_OPR ;
 int TYPECACHE_HASH_EXTENDED_PROC ;
 int TYPECACHE_HASH_PROC ;
 int get_base_element_type (int ) ;
 TYPE_1__* lookup_type_cache (int ,int) ;

__attribute__((used)) static void
cache_array_element_properties(TypeCacheEntry *typentry)
{
 Oid elem_type = get_base_element_type(typentry->type_id);

 if (OidIsValid(elem_type))
 {
  TypeCacheEntry *elementry;

  elementry = lookup_type_cache(elem_type,
           TYPECACHE_EQ_OPR |
           TYPECACHE_CMP_PROC |
           TYPECACHE_HASH_PROC |
           TYPECACHE_HASH_EXTENDED_PROC);
  if (OidIsValid(elementry->eq_opr))
   typentry->flags |= TCFLAGS_HAVE_ELEM_EQUALITY;
  if (OidIsValid(elementry->cmp_proc))
   typentry->flags |= TCFLAGS_HAVE_ELEM_COMPARE;
  if (OidIsValid(elementry->hash_proc))
   typentry->flags |= TCFLAGS_HAVE_ELEM_HASHING;
  if (OidIsValid(elementry->hash_extended_proc))
   typentry->flags |= TCFLAGS_HAVE_ELEM_EXTENDED_HASHING;
 }
 typentry->flags |= TCFLAGS_CHECKED_ELEM_PROPERTIES;
}
