
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;


 int mp_input_add_thread_src (struct input_ctx*,void*,int ) ;
 int read_pipe_thread ;

void mp_input_pipe_add(struct input_ctx *ictx, const char *filename)
{
    mp_input_add_thread_src(ictx, (void *)filename, read_pipe_thread);
}
