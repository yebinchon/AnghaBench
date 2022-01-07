
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs_push_constants {int constants; int count; int start_idx; int type; } ;
struct wined3d_cs {int dummy; } ;


 int wined3d_cs_st_push_constants (struct wined3d_cs*,int ,int ,int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_push_constants(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_push_constants *op = data;

    wined3d_cs_st_push_constants(cs, op->type, op->start_idx, op->count, op->constants);
}
