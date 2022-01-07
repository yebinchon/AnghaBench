
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int image; } ;
typedef TYPE_1__ gs_image_file2_t ;


 int gs_image_file_init_texture (int *) ;

__attribute__((used)) static inline void gs_image_file2_init_texture(gs_image_file2_t *if2)
{
 gs_image_file_init_texture(&if2->image);
}
