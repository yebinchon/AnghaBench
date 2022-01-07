
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* y; void* x; } ;
struct TYPE_8__ {void* y; void* x; } ;
struct TYPE_9__ {TYPE_1__ low; TYPE_2__ high; } ;
typedef TYPE_3__ BOX ;


 void* float8_max (void*,void*) ;
 void* float8_min (void*,void*) ;

__attribute__((used)) static void
rt_box_union(BOX *n, const BOX *a, const BOX *b)
{
 n->high.x = float8_max(a->high.x, b->high.x);
 n->high.y = float8_max(a->high.y, b->high.y);
 n->low.x = float8_min(a->low.x, b->low.x);
 n->low.y = float8_min(a->low.y, b->low.y);
}
