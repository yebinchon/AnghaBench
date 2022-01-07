
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_entry {int dummy; } ;
struct TYPE_5__ {void const* state; } ;
struct TYPE_6__ {int lock; scalar_t__ do_close; TYPE_1__ delegation; } ;
typedef TYPE_2__ nfs41_open_state ;


 int AcquireSRWLockShared (int *) ;
 int ReleaseSRWLockShared (int *) ;
 int has_delegated_locks (TYPE_2__*) ;
 TYPE_2__* open_entry (struct list_entry const*) ;

__attribute__((used)) static int open_deleg_cmp(const struct list_entry *entry, const void *value)
{
    nfs41_open_state *open = open_entry(entry);
    int result = -1;


    AcquireSRWLockShared(&open->lock);
    if (open->delegation.state != value) goto out;
    if (open->do_close && !has_delegated_locks(open)) goto out;
    result = 0;
out:
    ReleaseSRWLockShared(&open->lock);
    return result;
}
