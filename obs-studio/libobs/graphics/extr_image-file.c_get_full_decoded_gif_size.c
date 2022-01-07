
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int frame_count; } ;
struct TYPE_5__ {TYPE_1__ gif; } ;
typedef TYPE_2__ gs_image_file_t ;



__attribute__((used)) static inline int get_full_decoded_gif_size(gs_image_file_t *image)
{
 return image->gif.width * image->gif.height * 4 *
        image->gif.frame_count;
}
