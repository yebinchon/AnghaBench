
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;


 int mp_input_add_thread_src (struct input_ctx*,int *,int ) ;
 int read_gamepad_thread ;

void mp_input_sdl_gamepad_add(struct input_ctx *ictx)
{
    mp_input_add_thread_src(ictx, ((void*)0), read_gamepad_thread);
}
