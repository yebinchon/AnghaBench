
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {struct list_entry* next; } ;



__attribute__((used)) static int list_empty(
    struct list_entry *head)
{
    return head->next == head;
}
