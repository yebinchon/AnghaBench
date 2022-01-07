
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_req {scalar_t__ state; } ;


 scalar_t__ NN_REQ_STATE_IDLE ;
 scalar_t__ NN_REQ_STATE_PASSIVE ;
 scalar_t__ NN_REQ_STATE_STOPPING ;

int nn_req_inprogress (struct nn_req *self)
{

    return self->state == NN_REQ_STATE_IDLE ||
        self->state == NN_REQ_STATE_PASSIVE ||
        self->state == NN_REQ_STATE_STOPPING ? 0 : 1;
}
