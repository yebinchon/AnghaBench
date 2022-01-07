
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* control ) (struct vo*,int,void*) ;} ;


 int stub1 (struct vo*,int,void*) ;
 int update_opts (struct vo*) ;

__attribute__((used)) static void run_control(void *p)
{
    void **pp = p;
    struct vo *vo = pp[0];
    int request = (intptr_t)pp[1];
    void *data = pp[2];
    update_opts(vo);
    int ret = vo->driver->control(vo, request, data);
    if (pp[3])
        *(int *)pp[3] = ret;
}
