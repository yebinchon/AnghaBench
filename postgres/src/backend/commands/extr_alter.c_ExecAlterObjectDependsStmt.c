
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ extname; scalar_t__ object; int relation; int objectType; } ;
typedef int * Relation ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ AlterObjectDependsStmt ;


 int AccessExclusiveLock ;
 int Assert (int ) ;
 int DEPENDENCY_AUTO_EXTENSION ;
 int NoLock ;
 int OBJECT_EXTENSION ;
 int get_object_address (int ,int *,int **,int ,int) ;
 int get_object_address_rv (int ,int ,int *,int **,int ,int) ;
 int recordDependencyOn (int *,int *,int ) ;
 int table_close (int *,int ) ;

ObjectAddress
ExecAlterObjectDependsStmt(AlterObjectDependsStmt *stmt, ObjectAddress *refAddress)
{
 ObjectAddress address;
 ObjectAddress refAddr;
 Relation rel;

 address =
  get_object_address_rv(stmt->objectType, stmt->relation, (List *) stmt->object,
         &rel, AccessExclusiveLock, 0);





 if (rel)
  table_close(rel, NoLock);

 refAddr = get_object_address(OBJECT_EXTENSION, (Node *) stmt->extname,
         &rel, AccessExclusiveLock, 0);
 Assert(rel == ((void*)0));
 if (refAddress)
  *refAddress = refAddr;

 recordDependencyOn(&address, &refAddr, DEPENDENCY_AUTO_EXTENSION);

 return address;
}
