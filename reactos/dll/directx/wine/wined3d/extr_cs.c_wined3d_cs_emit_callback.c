
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_callback {void (* callback ) (void*) ;void* object; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_callback* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_CALLBACK ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_callback* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;

__attribute__((used)) static void wined3d_cs_emit_callback(struct wined3d_cs *cs, void (*callback)(void *object), void *object)
{
    struct wined3d_cs_callback *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_CALLBACK;
    op->callback = callback;
    op->object = object;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
