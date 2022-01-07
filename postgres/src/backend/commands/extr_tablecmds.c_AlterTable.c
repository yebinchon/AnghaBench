
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* relation; int cmds; } ;
struct TYPE_5__ {int inh; } ;
typedef int Relation ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef TYPE_2__ AlterTableStmt ;


 int ATController (TYPE_2__*,int ,int ,int ,int ) ;
 int CheckTableNotInUse (int ,char*) ;
 int NoLock ;
 int relation_open (int ,int ) ;

void
AlterTable(Oid relid, LOCKMODE lockmode, AlterTableStmt *stmt)
{
 Relation rel;


 rel = relation_open(relid, NoLock);

 CheckTableNotInUse(rel, "ALTER TABLE");

 ATController(stmt, rel, stmt->cmds, stmt->relation->inh, lockmode);
}
