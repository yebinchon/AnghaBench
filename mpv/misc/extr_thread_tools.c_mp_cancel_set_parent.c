
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cancel {int lock; struct mp_cancel* parent; int slaves; } ;


 int LL_APPEND (int ,int *,struct mp_cancel*) ;
 int LL_REMOVE (int ,int *,struct mp_cancel*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int retrigger_locked (struct mp_cancel*) ;
 int siblings ;

void mp_cancel_set_parent(struct mp_cancel *slave, struct mp_cancel *parent)
{



    if (slave->parent == parent)
        return;
    if (slave->parent) {
        pthread_mutex_lock(&slave->parent->lock);
        LL_REMOVE(siblings, &slave->parent->slaves, slave);
        pthread_mutex_unlock(&slave->parent->lock);
    }
    slave->parent = parent;
    if (slave->parent) {
        pthread_mutex_lock(&slave->parent->lock);
        LL_APPEND(siblings, &slave->parent->slaves, slave);
        retrigger_locked(slave->parent);
        pthread_mutex_unlock(&slave->parent->lock);
    }
}
