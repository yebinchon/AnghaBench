
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sockbase; } ;
struct nn_surveyor {TYPE_1__ xsurveyor; int tosend; } ;
struct nn_msg {int dummy; } ;


 int errnum_assert (int,int) ;
 int nn_msg_cp (struct nn_msg*,int *) ;
 int nn_xsurveyor_send (int *,struct nn_msg*) ;

__attribute__((used)) static void nn_surveyor_resend (struct nn_surveyor *self)
{
    int rc;
    struct nn_msg msg;

    nn_msg_cp (&msg, &self->tosend);
    rc = nn_xsurveyor_send (&self->xsurveyor.sockbase, &msg);
    errnum_assert (rc == 0, -rc);
}
