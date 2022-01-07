
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct TYPE_2__ {int * children; scalar_t__ num_children; } ;


 int talloc_free (int ) ;

void mp_filter_free_children(struct mp_filter *f)
{
    while(f->in->num_children)
        talloc_free(f->in->children[0]);
}
