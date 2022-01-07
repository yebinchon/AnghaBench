
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {struct descriptor* name; struct descriptor* connection; struct descriptor* next; } ;


 int ET_WARNING ;
 int PARSE_ERROR ;
 struct descriptor* descriptors ;
 int free (struct descriptor*) ;
 int mmerror (int ,int ,char*,char*) ;
 scalar_t__ strcmp (char*,struct descriptor*) ;

void
drop_descriptor(char *name, char *connection)
{
 struct descriptor *i;
 struct descriptor **lastptr = &descriptors;

 if (name[0] != '"')
  return;

 for (i = descriptors; i; lastptr = &i->next, i = i->next)
 {
  if (strcmp(name, i->name) == 0)
  {
   if ((!connection && !i->connection)
    || (connection && i->connection
     && strcmp(connection, i->connection) == 0))
   {
    *lastptr = i->next;
    if (i->connection)
     free(i->connection);
    free(i->name);
    free(i);
    return;
   }
  }
 }
 mmerror(PARSE_ERROR, ET_WARNING, "descriptor \"%s\" does not exist", name);
}
