
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {struct list_entry* next; struct list_entry* prev; } ;



__attribute__((used)) static void list_init(
    struct list_entry *head)
{
    head->prev = head;
    head->next = head;
}
