
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nid; } ;
typedef TYPE_1__ ENGINE_PILE ;



__attribute__((used)) static int engine_pile_cmp(const ENGINE_PILE *a, const ENGINE_PILE *b)
{
    return a->nid - b->nid;
}
