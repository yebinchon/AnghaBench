
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ length; } ;
typedef TYPE_1__ nfs41_lock_state ;


 TYPE_1__* lock_entry (struct list_entry const*) ;

__attribute__((used)) static int lock_range_cmp(const struct list_entry *entry, const void *value)
{
    const nfs41_lock_state *lhs = lock_entry(entry);
    const nfs41_lock_state *rhs = (const nfs41_lock_state*)value;
    if (lhs->offset != rhs->offset) return -1;
    if (lhs->length != rhs->length) return -1;
    return 0;
}
