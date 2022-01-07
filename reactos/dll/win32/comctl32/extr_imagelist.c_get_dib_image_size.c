
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int biHeight; int biBitCount; int biWidth; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef TYPE_2__ BITMAPINFO ;


 int abs (int ) ;
 int get_dib_stride (int ,int ) ;

__attribute__((used)) static inline int get_dib_image_size( const BITMAPINFO *info )
{
    return get_dib_stride( info->bmiHeader.biWidth, info->bmiHeader.biBitCount )
        * abs( info->bmiHeader.biHeight );
}
