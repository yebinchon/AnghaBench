
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct config_enum_entry {char const* name; int hidden; } ;
struct config_enum {struct config_enum_entry* options; } ;
struct TYPE_5__ {int len; char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendBinaryStringInfo (TYPE_1__*,char const*,int) ;
 int appendStringInfoString (TYPE_1__*,char const*) ;
 int initStringInfo (TYPE_1__*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
config_enum_get_options(struct config_enum *record, const char *prefix,
      const char *suffix, const char *separator)
{
 const struct config_enum_entry *entry;
 StringInfoData retstr;
 int seplen;

 initStringInfo(&retstr);
 appendStringInfoString(&retstr, prefix);

 seplen = strlen(separator);
 for (entry = record->options; entry && entry->name; entry++)
 {
  if (!entry->hidden)
  {
   appendStringInfoString(&retstr, entry->name);
   appendBinaryStringInfo(&retstr, separator, seplen);
  }
 }
 if (retstr.len >= seplen)
 {

  retstr.data[retstr.len - seplen] = '\0';
  retstr.len -= seplen;
 }

 appendStringInfoString(&retstr, suffix);

 return retstr.data;
}
