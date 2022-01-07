
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lavfi {int dummy; } ;
struct TYPE_3__ {int name; int pad_idx; int filter_ctx; struct TYPE_3__* next; } ;
typedef TYPE_1__ AVFilterInOut ;


 int add_pad (struct lavfi*,int,int ,int ,int ,int ,int) ;

__attribute__((used)) static void add_pads(struct lavfi *c, int dir, AVFilterInOut *l, bool first_init)
{
    int index = 0;
    for (; l; l = l->next)
        add_pad(c, dir, index++, l->filter_ctx, l->pad_idx, l->name, first_init);
}
