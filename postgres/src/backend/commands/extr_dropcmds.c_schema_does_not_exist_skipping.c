
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* schemaname; } ;
typedef TYPE_1__ RangeVar ;
typedef int List ;


 int LookupNamespaceNoError (char*) ;
 int OidIsValid (int ) ;
 char* gettext_noop (char*) ;
 TYPE_1__* makeRangeVarFromNameList (int *) ;

__attribute__((used)) static bool
schema_does_not_exist_skipping(List *object, const char **msg, char **name)
{
 RangeVar *rel;

 rel = makeRangeVarFromNameList(object);

 if (rel->schemaname != ((void*)0) &&
  !OidIsValid(LookupNamespaceNoError(rel->schemaname)))
 {
  *msg = gettext_noop("schema \"%s\" does not exist, skipping");
  *name = rel->schemaname;

  return 1;
 }

 return 0;
}
