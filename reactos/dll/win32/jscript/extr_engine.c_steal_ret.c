
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsval_t ;
struct TYPE_3__ {int ret; } ;
typedef TYPE_1__ call_frame_t ;


 int jsval_undefined () ;

__attribute__((used)) static inline jsval_t steal_ret(call_frame_t *frame)
{
    jsval_t r = frame->ret;
    frame->ret = jsval_undefined();
    return r;
}
