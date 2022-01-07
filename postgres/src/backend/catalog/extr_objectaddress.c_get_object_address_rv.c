
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ catalogname; scalar_t__ schemaname; scalar_t__ relname; } ;
typedef int Relation ;
typedef TYPE_1__ RangeVar ;
typedef int ObjectType ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef int LOCKMODE ;


 int get_object_address (int ,int *,int *,int ,int) ;
 int * lcons (int ,int *) ;
 int makeString (scalar_t__) ;

ObjectAddress
get_object_address_rv(ObjectType objtype, RangeVar *rel, List *object,
       Relation *relp, LOCKMODE lockmode,
       bool missing_ok)
{
 if (rel)
 {
  object = lcons(makeString(rel->relname), object);
  if (rel->schemaname)
   object = lcons(makeString(rel->schemaname), object);
  if (rel->catalogname)
   object = lcons(makeString(rel->catalogname), object);
 }

 return get_object_address(objtype, (Node *) object,
         relp, lockmode, missing_ok);
}
