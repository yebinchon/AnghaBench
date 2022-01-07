
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cl_device_id ;
typedef int cl_context ;
struct TYPE_3__ {int transformed_width; int transformed_height; int net_input_size; int loadyuv; int context; void* net_input; void* transformed_v_cl; void* transformed_u_cl; void* transformed_y_cl; int transform; int device_id; } ;
typedef TYPE_1__ ModelInput ;


 int CL_MEM_READ_WRITE ;
 int assert (int) ;
 void* clCreateBuffer (int ,int ,int,void*,int*) ;
 int loadyuv_init (int *,int ,int ,int,int) ;
 int transform_init (int *,int ,int ) ;

void model_input_init(ModelInput* s, int width, int height,
                      cl_device_id device_id, cl_context context) {
  int err;
  s->device_id = device_id;
  s->context = context;

  transform_init(&s->transform, context, device_id);
  s->transformed_width = width;
  s->transformed_height = height;

  s->transformed_y_cl = clCreateBuffer(s->context, CL_MEM_READ_WRITE,
                                       s->transformed_width*s->transformed_height, ((void*)0), &err);
  assert(err == 0);
  s->transformed_u_cl = clCreateBuffer(s->context, CL_MEM_READ_WRITE,
                                       (s->transformed_width/2)*(s->transformed_height/2), ((void*)0), &err);
  assert(err == 0);
  s->transformed_v_cl = clCreateBuffer(s->context, CL_MEM_READ_WRITE,
                                       (s->transformed_width/2)*(s->transformed_height/2), ((void*)0), &err);
  assert(err == 0);

  s->net_input_size = ((width*height*3)/2)*sizeof(float);
  s->net_input = clCreateBuffer(s->context, CL_MEM_READ_WRITE,
                                s->net_input_size, (void*)((void*)0), &err);
  assert(err == 0);

  loadyuv_init(&s->loadyuv, context, device_id, s->transformed_width, s->transformed_height);
}
