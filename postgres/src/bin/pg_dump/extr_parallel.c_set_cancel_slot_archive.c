
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * AH; } ;
typedef TYPE_1__ ParallelSlot ;
typedef int ArchiveHandle ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int signal_info_lock ;

__attribute__((used)) static void
set_cancel_slot_archive(ParallelSlot *slot, ArchiveHandle *AH)
{




 slot->AH = AH;




}
