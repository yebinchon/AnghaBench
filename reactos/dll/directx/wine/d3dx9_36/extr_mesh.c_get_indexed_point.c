
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct point2d_index {size_t vertex; TYPE_2__* outline; } ;
struct TYPE_4__ {TYPE_1__* items; } ;
struct TYPE_3__ {int pos; } ;
typedef int D3DXVECTOR2 ;



__attribute__((used)) static D3DXVECTOR2 *get_indexed_point(struct point2d_index *pt_idx)
{
    return &pt_idx->outline->items[pt_idx->vertex].pos;
}
