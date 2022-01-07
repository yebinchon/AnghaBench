
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG4 ;
 int ERROR ;
 int NoLock ;
 char* RelationGetRelationName (int *) ;
 int * boot_reldesc ;
 int elog (int ,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int table_close (int *,int ) ;

void
closerel(char *name)
{
 if (name)
 {
  if (boot_reldesc)
  {
   if (strcmp(RelationGetRelationName(boot_reldesc), name) != 0)
    elog(ERROR, "close of %s when %s was expected",
      name, RelationGetRelationName(boot_reldesc));
  }
  else
   elog(ERROR, "close of %s before any relation was opened",
     name);
 }

 if (boot_reldesc == ((void*)0))
  elog(ERROR, "no open relation to close");
 else
 {
  elog(DEBUG4, "close relation %s",
    RelationGetRelationName(boot_reldesc));
  table_close(boot_reldesc, NoLock);
  boot_reldesc = ((void*)0);
 }
}
