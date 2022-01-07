
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {struct list_entry* prev; struct list_entry* next; } ;



__attribute__((used)) static void list_add(
    struct list_entry *entry,
    struct list_entry *prev,
    struct list_entry *next)
{

    entry->prev = prev;
    entry->next = next;
    prev->next = entry;
    next->prev = entry;
}
