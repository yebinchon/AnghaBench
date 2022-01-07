
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_3__ {int (* DebugMessageCallback ) (int *,struct mp_log*) ;} ;
typedef TYPE_1__ GL ;


 int * gl_debug_cb ;
 int stub1 (int *,struct mp_log*) ;

void gl_set_debug_logger(GL *gl, struct mp_log *log)
{
    if (gl->DebugMessageCallback)
        gl->DebugMessageCallback(log ? gl_debug_cb : ((void*)0), log);
}
