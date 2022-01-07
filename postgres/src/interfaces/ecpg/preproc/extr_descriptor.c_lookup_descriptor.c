
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {scalar_t__ connection; scalar_t__ name; struct descriptor* next; } ;


 int ET_WARNING ;
 int PARSE_ERROR ;
 struct descriptor* descriptors ;
 int mmerror (int ,int ,char*,char*) ;
 scalar_t__ strcmp (char*,scalar_t__) ;

struct descriptor
     *
lookup_descriptor(char *name, char *connection)
{
 struct descriptor *i;

 if (name[0] != '"')
  return ((void*)0);

 for (i = descriptors; i; i = i->next)
 {
  if (strcmp(name, i->name) == 0)
  {
   if ((!connection && !i->connection)
    || (connection && i->connection
     && strcmp(connection, i->connection) == 0))
    return i;
  }
 }
 mmerror(PARSE_ERROR, ET_WARNING, "descriptor \"%s\" does not exist", name);
 return ((void*)0);
}
