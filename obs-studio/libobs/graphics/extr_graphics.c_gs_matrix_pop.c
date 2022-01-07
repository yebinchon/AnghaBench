
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cur_matrix; int matrix_stack; } ;
typedef TYPE_1__ graphics_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int da_erase (int ,scalar_t__) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;

void gs_matrix_pop(void)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_matrix_pop"))
  return;

 if (graphics->cur_matrix == 0) {
  blog(LOG_ERROR, "Tried to pop last matrix on stack");
  return;
 }

 da_erase(graphics->matrix_stack, graphics->cur_matrix);
 graphics->cur_matrix--;
}
