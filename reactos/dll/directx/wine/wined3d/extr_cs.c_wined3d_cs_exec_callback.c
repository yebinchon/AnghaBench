
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs_callback {int object; int (* callback ) (int ) ;} ;
struct wined3d_cs {int dummy; } ;


 int stub1 (int ) ;

__attribute__((used)) static void wined3d_cs_exec_callback(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_callback *op = data;

    op->callback(op->object);
}
