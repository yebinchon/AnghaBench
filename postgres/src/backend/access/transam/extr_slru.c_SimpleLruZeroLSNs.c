
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int lsn_groups_per_page; int * group_lsn; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruCtl ;


 int MemSet (int *,int ,int) ;

__attribute__((used)) static void
SimpleLruZeroLSNs(SlruCtl ctl, int slotno)
{
 SlruShared shared = ctl->shared;

 if (shared->lsn_groups_per_page > 0)
  MemSet(&shared->group_lsn[slotno * shared->lsn_groups_per_page], 0,
      shared->lsn_groups_per_page * sizeof(XLogRecPtr));
}
