
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int loaded; } ;
struct TYPE_6__ {TYPE_1__ image; } ;
struct image_source {char* file; TYPE_2__ if2; scalar_t__ update_time_elapsed; int file_timestamp; } ;


 int debug (char*,char*) ;
 int get_modified_timestamp (char*) ;
 int gs_image_file2_free (TYPE_2__*) ;
 int gs_image_file2_init (TYPE_2__*,char*) ;
 int gs_image_file2_init_texture (TYPE_2__*) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int warn (char*,char*) ;

__attribute__((used)) static void image_source_load(struct image_source *context)
{
 char *file = context->file;

 obs_enter_graphics();
 gs_image_file2_free(&context->if2);
 obs_leave_graphics();

 if (file && *file) {
  debug("loading texture '%s'", file);
  context->file_timestamp = get_modified_timestamp(file);
  gs_image_file2_init(&context->if2, file);
  context->update_time_elapsed = 0;

  obs_enter_graphics();
  gs_image_file2_init_texture(&context->if2);
  obs_leave_graphics();

  if (!context->if2.image.loaded)
   warn("failed to load texture '%s'", file);
 }
}
