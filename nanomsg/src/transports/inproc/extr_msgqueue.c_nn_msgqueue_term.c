
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chunk; } ;
struct TYPE_3__ {scalar_t__ chunk; } ;
struct nn_msgqueue {scalar_t__ cache; TYPE_2__ in; TYPE_1__ out; } ;
struct nn_msg {int dummy; } ;


 int EAGAIN ;
 int errnum_assert (int,int) ;
 int nn_assert (int) ;
 int nn_free (scalar_t__) ;
 int nn_msg_term (struct nn_msg*) ;
 int nn_msgqueue_recv (struct nn_msgqueue*,struct nn_msg*) ;

void nn_msgqueue_term (struct nn_msgqueue *self)
{
    int rc;
    struct nn_msg msg;


    while (1) {
        rc = nn_msgqueue_recv (self, &msg);
        if (rc == -EAGAIN)
            break;
        errnum_assert (rc >= 0, -rc);
        nn_msg_term (&msg);
    }



    nn_assert (self->in.chunk == self->out.chunk);
    nn_free (self->in.chunk);


    if (self->cache)
        nn_free (self->cache);
}
