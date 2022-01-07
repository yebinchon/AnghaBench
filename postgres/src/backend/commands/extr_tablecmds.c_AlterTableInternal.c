
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int LOCKMODE ;


 int ATController (int *,int ,int *,int,int ) ;
 int AlterTableGetLockLevel (int *) ;
 int EventTriggerAlterTableRelid (int ) ;
 int relation_open (int ,int ) ;

void
AlterTableInternal(Oid relid, List *cmds, bool recurse)
{
 Relation rel;
 LOCKMODE lockmode = AlterTableGetLockLevel(cmds);

 rel = relation_open(relid, lockmode);

 EventTriggerAlterTableRelid(relid);

 ATController(((void*)0), rel, cmds, recurse, lockmode);
}
