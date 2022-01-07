
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_image_file_t ;


 int gs_image_file_init_internal (int *,char const*,int *) ;

void gs_image_file_init(gs_image_file_t *image, const char *file)
{
 gs_image_file_init_internal(image, file, ((void*)0));
}
