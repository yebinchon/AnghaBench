
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_source {int if2; } ;


 int gs_image_file2_free (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void image_source_unload(struct image_source *context)
{
 obs_enter_graphics();
 gs_image_file2_free(&context->if2);
 obs_leave_graphics();
}
