
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_enum_entry {char const* name; int val; } ;
struct TYPE_2__ {int name; } ;
struct config_enum {TYPE_1__ gen; struct config_enum_entry* options; } ;


 int ERROR ;
 int elog (int ,char*,int,int ) ;

const char *
config_enum_lookup_by_value(struct config_enum *record, int val)
{
 const struct config_enum_entry *entry;

 for (entry = record->options; entry && entry->name; entry++)
 {
  if (entry->val == val)
   return entry->name;
 }

 elog(ERROR, "could not find enum option %d for %s",
   val, record->gen.name);
 return ((void*)0);
}
