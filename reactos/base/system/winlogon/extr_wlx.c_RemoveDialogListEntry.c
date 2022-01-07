
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int Entry; } ;
typedef TYPE_1__* PDIALOG_LIST_ENTRY ;


 int RemoveEntryList (int *) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static
VOID
RemoveDialogListEntry(PDIALOG_LIST_ENTRY ListEntry)
{
    TRACE("Remove entry %p\n", ListEntry);

    RemoveEntryList(&ListEntry->Entry);
    RtlFreeHeap(RtlGetProcessHeap(), 0, ListEntry);
}
