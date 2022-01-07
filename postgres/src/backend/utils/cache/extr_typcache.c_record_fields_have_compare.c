
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ TypeCacheEntry ;


 int TCFLAGS_CHECKED_FIELD_PROPERTIES ;
 int TCFLAGS_HAVE_FIELD_COMPARE ;
 int cache_record_field_properties (TYPE_1__*) ;

__attribute__((used)) static bool
record_fields_have_compare(TypeCacheEntry *typentry)
{
 if (!(typentry->flags & TCFLAGS_CHECKED_FIELD_PROPERTIES))
  cache_record_field_properties(typentry);
 return (typentry->flags & TCFLAGS_HAVE_FIELD_COMPARE) != 0;
}
