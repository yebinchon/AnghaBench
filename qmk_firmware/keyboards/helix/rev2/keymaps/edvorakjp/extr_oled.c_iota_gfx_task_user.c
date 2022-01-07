
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CharacterMatrix {int dummy; } ;


 scalar_t__ debug_enable ;
 int display ;
 scalar_t__ is_master ;
 int matrix_clear (struct CharacterMatrix*) ;
 int matrix_update (int *,struct CharacterMatrix*) ;
 int render_logo (struct CharacterMatrix*) ;
 int render_status (struct CharacterMatrix*) ;

void iota_gfx_task_user(void) {
  struct CharacterMatrix matrix;





  matrix_clear(&matrix);
  if (is_master) {
    render_status(&matrix);
  } else {
    render_logo(&matrix);
  }
  matrix_update(&display, &matrix);
}
