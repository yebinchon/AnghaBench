
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lxid; } ;
struct TYPE_4__ {scalar_t__ lxid; int relid; } ;
typedef TYPE_1__* SeqTable ;
typedef int ResourceOwner ;
typedef int Relation ;
typedef scalar_t__ LocalTransactionId ;


 int CurrentResourceOwner ;
 int LockRelationOid (int ,int ) ;
 TYPE_3__* MyProc ;
 int NoLock ;
 int RowExclusiveLock ;
 int TopTransactionResourceOwner ;
 int relation_open (int ,int ) ;

__attribute__((used)) static Relation
lock_and_open_sequence(SeqTable seq)
{
 LocalTransactionId thislxid = MyProc->lxid;


 if (seq->lxid != thislxid)
 {
  ResourceOwner currentOwner;

  currentOwner = CurrentResourceOwner;
  CurrentResourceOwner = TopTransactionResourceOwner;

  LockRelationOid(seq->relid, RowExclusiveLock);

  CurrentResourceOwner = currentOwner;


  seq->lxid = thislxid;
 }


 return relation_open(seq->relid, NoLock);
}
