
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int cx; int cy; } ;
struct TYPE_5__ {int cx; int cy; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__* HIMAGELIST ;


 int TILE_COUNT ;
 int imagelist_height (int ) ;

__attribute__((used)) static inline void imagelist_get_bitmap_size( HIMAGELIST himl, UINT count, SIZE *sz )
{
    sz->cx = himl->cx * TILE_COUNT;
    sz->cy = imagelist_height( count ) * himl->cy;
}
