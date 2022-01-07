
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deleting_subid; int creating_subid; scalar_t__ oncommit; int relid; } ;
typedef TYPE_1__ OnCommitItem ;
typedef scalar_t__ OnCommitAction ;
typedef int Oid ;
typedef int MemoryContext ;


 int CacheMemoryContext ;
 int GetCurrentSubTransactionId () ;
 int InvalidSubTransactionId ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ ONCOMMIT_NOOP ;
 scalar_t__ ONCOMMIT_PRESERVE_ROWS ;
 int lcons (TYPE_1__*,int ) ;
 int on_commits ;
 scalar_t__ palloc (int) ;

void
register_on_commit_action(Oid relid, OnCommitAction action)
{
 OnCommitItem *oc;
 MemoryContext oldcxt;





 if (action == ONCOMMIT_NOOP || action == ONCOMMIT_PRESERVE_ROWS)
  return;

 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);

 oc = (OnCommitItem *) palloc(sizeof(OnCommitItem));
 oc->relid = relid;
 oc->oncommit = action;
 oc->creating_subid = GetCurrentSubTransactionId();
 oc->deleting_subid = InvalidSubTransactionId;






 on_commits = lcons(oc, on_commits);

 MemoryContextSwitchTo(oldcxt);
}
