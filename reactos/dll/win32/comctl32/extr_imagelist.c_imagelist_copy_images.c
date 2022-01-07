
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int cy; int cx; } ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {int cy; int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__* HIMAGELIST ;
typedef int HDC ;


 int BitBlt (int ,int ,int ,int ,int,int ,int ,int ,int ) ;
 int SRCCOPY ;
 scalar_t__ TILE_COUNT ;
 int imagelist_height (scalar_t__) ;
 int imagelist_point_from_index (TYPE_3__*,scalar_t__,TYPE_2__*) ;

__attribute__((used)) static inline void imagelist_copy_images( HIMAGELIST himl, HDC hdcSrc, HDC hdcDest,
                                          UINT src, UINT count, UINT dest )
{
    POINT ptSrc, ptDest;
    SIZE sz;
    UINT i;

    for ( i=0; i<TILE_COUNT; i++ )
    {
        imagelist_point_from_index( himl, src+i, &ptSrc );
        imagelist_point_from_index( himl, dest+i, &ptDest );
        sz.cx = himl->cx;
        sz.cy = himl->cy * imagelist_height( count - i );

        BitBlt( hdcDest, ptDest.x, ptDest.y, sz.cx, sz.cy,
                hdcSrc, ptSrc.x, ptSrc.y, SRCCOPY );
    }
}
