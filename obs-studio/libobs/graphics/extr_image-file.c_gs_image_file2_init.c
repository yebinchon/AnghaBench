
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mem_usage; int image; } ;
typedef TYPE_1__ gs_image_file2_t ;


 int gs_image_file_init_internal (int *,char const*,int *) ;

void gs_image_file2_init(gs_image_file2_t *if2, const char *file)
{
 gs_image_file_init_internal(&if2->image, file, &if2->mem_usage);
}
