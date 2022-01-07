
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs {TYPE_1__* ops; } ;
typedef enum wined3d_push_constants { ____Placeholder_wined3d_push_constants } wined3d_push_constants ;
struct TYPE_2__ {int (* push_constants ) (struct wined3d_cs*,int,unsigned int,unsigned int,void const*) ;} ;


 int stub1 (struct wined3d_cs*,int,unsigned int,unsigned int,void const*) ;

__attribute__((used)) static inline void wined3d_cs_push_constants(struct wined3d_cs *cs, enum wined3d_push_constants p,
        unsigned int start_idx, unsigned int count, const void *constants)
{
    cs->ops->push_constants(cs, p, start_idx, count, constants);
}
