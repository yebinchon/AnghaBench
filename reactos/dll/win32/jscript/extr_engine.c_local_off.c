
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arguments_off; int variables_off; } ;
typedef TYPE_1__ call_frame_t ;



__attribute__((used)) static inline unsigned local_off(call_frame_t *frame, int ref)
{
    return ref < 0
        ? frame->arguments_off - ref-1
        : frame->variables_off + ref;
}
