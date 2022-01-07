
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int * ChooseIndexNameAddition (int *) ;
 char* ChooseRelationName (char const*,int *,char*,int ,int) ;
 int * NIL ;

__attribute__((used)) static char *
ChooseIndexName(const char *tabname, Oid namespaceId,
    List *colnames, List *exclusionOpNames,
    bool primary, bool isconstraint)
{
 char *indexname;

 if (primary)
 {

  indexname = ChooseRelationName(tabname,
            ((void*)0),
            "pkey",
            namespaceId,
            1);
 }
 else if (exclusionOpNames != NIL)
 {
  indexname = ChooseRelationName(tabname,
            ChooseIndexNameAddition(colnames),
            "excl",
            namespaceId,
            1);
 }
 else if (isconstraint)
 {
  indexname = ChooseRelationName(tabname,
            ChooseIndexNameAddition(colnames),
            "key",
            namespaceId,
            1);
 }
 else
 {
  indexname = ChooseRelationName(tabname,
            ChooseIndexNameAddition(colnames),
            "idx",
            namespaceId,
            0);
 }

 return indexname;
}
