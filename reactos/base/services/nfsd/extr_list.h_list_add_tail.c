
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {int prev; } ;


 int list_add (struct list_entry*,int ,struct list_entry*) ;

__attribute__((used)) static void list_add_tail(
    struct list_entry *head,
    struct list_entry *entry)
{
    list_add(entry, head->prev, head);
}
