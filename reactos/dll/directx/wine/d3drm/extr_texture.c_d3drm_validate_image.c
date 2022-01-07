
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ palette_size; scalar_t__ palette; scalar_t__ rgb; int buffer1; int blue_mask; int green_mask; int red_mask; } ;
typedef TYPE_1__ D3DRMIMAGE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL d3drm_validate_image(D3DRMIMAGE *image)
{
    if (!image
            || !image->red_mask
            || !image->green_mask
            || !image->blue_mask
            || !image->buffer1
            || !(image->rgb || (image->palette && image->palette_size)))
    {
        return FALSE;
    }

    return TRUE;
}
