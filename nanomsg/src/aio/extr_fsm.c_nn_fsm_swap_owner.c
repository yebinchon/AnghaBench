
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_owner {int src; struct nn_fsm* fsm; } ;
struct nn_fsm {int src; struct nn_fsm* owner; } ;



void nn_fsm_swap_owner (struct nn_fsm *self, struct nn_fsm_owner *owner)
{
    int oldsrc;
    struct nn_fsm *oldowner;

    oldsrc = self->src;
    oldowner = self->owner;
    self->src = owner->src;
    self->owner = owner->fsm;
    owner->src = oldsrc;
    owner->fsm = oldowner;
}
