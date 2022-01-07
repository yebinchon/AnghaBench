
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct matrix4 {int dummy; } ;
struct TYPE_4__ {int cur_matrix; int matrix_stack; } ;
typedef TYPE_1__ graphics_t ;


 int da_push_back (int ,struct matrix4*) ;
 int gs_valid (char*) ;
 int memcpy (struct matrix4*,struct matrix4*,int) ;
 TYPE_1__* thread_graphics ;
 struct matrix4* top_matrix (TYPE_1__*) ;

void gs_matrix_push(void)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_matrix_push"))
  return;

 struct matrix4 mat, *top_mat = top_matrix(graphics);

 memcpy(&mat, top_mat, sizeof(struct matrix4));
 da_push_back(graphics->matrix_stack, &mat);
 graphics->cur_matrix++;
}
