
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mat3 ;
typedef int cl_mem ;
typedef int cl_command_queue ;
struct TYPE_3__ {int net_input_size; int net_input; int transformed_v_cl; int transformed_u_cl; int transformed_y_cl; int loadyuv; int transformed_height; int transformed_width; int transform; } ;
typedef TYPE_1__ ModelInput ;


 int CL_MAP_READ ;
 int CL_TRUE ;
 scalar_t__ clEnqueueMapBuffer (int ,int ,int ,int ,int ,int ,int ,int *,int *,int*) ;
 int clFinish (int ) ;
 int loadyuv_queue (int *,int ,int ,int ,int ,int ) ;
 int transform_queue (int *,int ,int ,int,int,int ,int ,int ,int ,int ,int ) ;

float *model_input_prepare(ModelInput* s, cl_command_queue q,
                           cl_mem yuv_cl, int width, int height,
                           mat3 transform) {
  int err;
  int i = 0;
  transform_queue(&s->transform, q,
                  yuv_cl, width, height,
                  s->transformed_y_cl, s->transformed_u_cl, s->transformed_v_cl,
                  s->transformed_width, s->transformed_height,
                  transform);
  loadyuv_queue(&s->loadyuv, q,
                s->transformed_y_cl, s->transformed_u_cl, s->transformed_v_cl,
                s->net_input);
  float *net_input_buf = (float *)clEnqueueMapBuffer(q, s->net_input, CL_TRUE,
                                            CL_MAP_READ, 0, s->net_input_size,
                                            0, ((void*)0), ((void*)0), &err);
  clFinish(q);
  return net_input_buf;
}
