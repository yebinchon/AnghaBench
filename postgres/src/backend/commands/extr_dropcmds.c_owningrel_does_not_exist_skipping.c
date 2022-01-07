
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;
typedef int List ;


 char* NameListToString (int *) ;
 int NoLock ;
 int OidIsValid (int ) ;
 int RangeVarGetRelid (int *,int ,int) ;
 char* gettext_noop (char*) ;
 int list_copy (int *) ;
 scalar_t__ list_length (int *) ;
 int * list_truncate (int ,scalar_t__) ;
 int * makeRangeVarFromNameList (int *) ;
 scalar_t__ schema_does_not_exist_skipping (int *,char const**,char**) ;

__attribute__((used)) static bool
owningrel_does_not_exist_skipping(List *object, const char **msg, char **name)
{
 List *parent_object;
 RangeVar *parent_rel;

 parent_object = list_truncate(list_copy(object),
          list_length(object) - 1);

 if (schema_does_not_exist_skipping(parent_object, msg, name))
  return 1;

 parent_rel = makeRangeVarFromNameList(parent_object);

 if (!OidIsValid(RangeVarGetRelid(parent_rel, NoLock, 1)))
 {
  *msg = gettext_noop("relation \"%s\" does not exist, skipping");
  *name = NameListToString(parent_object);

  return 1;
 }

 return 0;
}
