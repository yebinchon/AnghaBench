
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mssfix; } ;
struct options {TYPE_1__ ce; } ;
struct frame {int dummy; } ;


 int SET_MTU_UPPER_BOUND ;
 int frame_set_mtu_dynamic (struct frame*,scalar_t__,int ) ;

void
frame_init_mssfix(struct frame *frame, const struct options *options)
{
    if (options->ce.mssfix)
    {
        frame_set_mtu_dynamic(frame, options->ce.mssfix, SET_MTU_UPPER_BOUND);
    }
}
