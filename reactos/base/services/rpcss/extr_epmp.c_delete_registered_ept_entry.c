
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct registered_ept_entry {int entry; int address; int endpoint; int protseq; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct registered_ept_entry*) ;
 int I_RpcFree (int ) ;
 int list_remove (int *) ;

__attribute__((used)) static void delete_registered_ept_entry(struct registered_ept_entry *entry)
{
    I_RpcFree(entry->protseq);
    I_RpcFree(entry->endpoint);
    I_RpcFree(entry->address);
    list_remove(&entry->entry);
    HeapFree(GetProcessHeap(), 0, entry);
}
