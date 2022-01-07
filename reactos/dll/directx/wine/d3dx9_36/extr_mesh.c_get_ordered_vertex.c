
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * items; } ;
struct glyphinfo {TYPE_1__ ordered_vertices; } ;
typedef size_t WORD ;
typedef int D3DXVECTOR2 ;


 int * get_indexed_point (int *) ;

__attribute__((used)) static D3DXVECTOR2 *get_ordered_vertex(struct glyphinfo *glyph, WORD index)
{
    return get_indexed_point(&glyph->ordered_vertices.items[index]);
}
