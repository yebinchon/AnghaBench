
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {int next; } ;


 int list_add (struct list_entry*,struct list_entry*,int ) ;

__attribute__((used)) static void list_add_head(
    struct list_entry *head,
    struct list_entry *entry)
{
    list_add(entry, head, head->next);
}
