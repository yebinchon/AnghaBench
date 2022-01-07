
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ TypeCacheEntry ;


 int TCFLAGS_CHECKED_ELEM_PROPERTIES ;
 int TCFLAGS_HAVE_ELEM_HASHING ;
 int cache_range_element_properties (TYPE_1__*) ;

__attribute__((used)) static bool
range_element_has_hashing(TypeCacheEntry *typentry)
{
 if (!(typentry->flags & TCFLAGS_CHECKED_ELEM_PROPERTIES))
  cache_range_element_properties(typentry);
 return (typentry->flags & TCFLAGS_HAVE_ELEM_HASHING) != 0;
}
