
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rot_entry {struct rot_entry* moniker_data; struct rot_entry* moniker; struct rot_entry* object; int refs; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct rot_entry*) ;
 int InterlockedDecrement (int *) ;

__attribute__((used)) static inline void rot_entry_release(struct rot_entry *rot_entry)
{
    if (!InterlockedDecrement(&rot_entry->refs))
    {
        HeapFree(GetProcessHeap(), 0, rot_entry->object);
        HeapFree(GetProcessHeap(), 0, rot_entry->moniker);
        HeapFree(GetProcessHeap(), 0, rot_entry->moniker_data);
        HeapFree(GetProcessHeap(), 0, rot_entry);
    }
}
