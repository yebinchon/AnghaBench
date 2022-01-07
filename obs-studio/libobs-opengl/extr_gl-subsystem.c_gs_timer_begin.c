
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * queries; } ;
typedef TYPE_1__ gs_timer_t ;


 int GL_TIMESTAMP ;
 int glQueryCounter (int ,int ) ;
 int gl_success (char*) ;

void gs_timer_begin(gs_timer_t *timer)
{
 glQueryCounter(timer->queries[0], GL_TIMESTAMP);
 gl_success("glQueryCounter");
}
