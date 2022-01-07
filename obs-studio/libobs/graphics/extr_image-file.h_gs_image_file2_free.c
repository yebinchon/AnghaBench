
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mem_usage; int image; } ;
typedef TYPE_1__ gs_image_file2_t ;


 int gs_image_file_free (int *) ;

__attribute__((used)) static void gs_image_file2_free(gs_image_file2_t *if2)
{
 gs_image_file_free(&if2->image);
 if2->mem_usage = 0;
}
