
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ typtype; int flags; int hash_extended_proc; int hash_proc; TYPE_1__* rngelemtype; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_6__ {int type_id; } ;


 scalar_t__ OidIsValid (int ) ;
 int TCFLAGS_CHECKED_ELEM_PROPERTIES ;
 int TCFLAGS_HAVE_ELEM_EXTENDED_HASHING ;
 int TCFLAGS_HAVE_ELEM_HASHING ;
 int TYPECACHE_HASH_EXTENDED_PROC ;
 int TYPECACHE_HASH_PROC ;
 scalar_t__ TYPTYPE_RANGE ;
 int load_rangetype_info (TYPE_2__*) ;
 TYPE_2__* lookup_type_cache (int ,int) ;

__attribute__((used)) static void
cache_range_element_properties(TypeCacheEntry *typentry)
{

 if (typentry->rngelemtype == ((void*)0) &&
  typentry->typtype == TYPTYPE_RANGE)
  load_rangetype_info(typentry);

 if (typentry->rngelemtype != ((void*)0))
 {
  TypeCacheEntry *elementry;


  elementry = lookup_type_cache(typentry->rngelemtype->type_id,
           TYPECACHE_HASH_PROC |
           TYPECACHE_HASH_EXTENDED_PROC);
  if (OidIsValid(elementry->hash_proc))
   typentry->flags |= TCFLAGS_HAVE_ELEM_HASHING;
  if (OidIsValid(elementry->hash_extended_proc))
   typentry->flags |= TCFLAGS_HAVE_ELEM_EXTENDED_HASHING;
 }
 typentry->flags |= TCFLAGS_CHECKED_ELEM_PROPERTIES;
}
