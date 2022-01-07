
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TimeoutEntry {scalar_t__ timestamp; TYPE_1__** prev; TYPE_1__* next; } ;
struct TYPE_2__ {struct TYPE_2__** prev; } ;



__attribute__((used)) static inline void
timeout_unlink(struct TimeoutEntry *entry)
{
    if (entry->prev == 0 && entry->next == 0)
        return;
    *(entry->prev) = entry->next;
    if (entry->next)
        entry->next->prev = entry->prev;
    entry->next = 0;
    entry->prev = 0;
    entry->timestamp = 0;
}
