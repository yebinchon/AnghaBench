#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_device_id ;
typedef  int /*<<< orphan*/  cl_context ;
struct TYPE_3__ {int transformed_width; int transformed_height; int net_input_size; int /*<<< orphan*/  loadyuv; int /*<<< orphan*/  context; void* net_input; void* transformed_v_cl; void* transformed_u_cl; void* transformed_y_cl; int /*<<< orphan*/  transform; int /*<<< orphan*/  device_id; } ;
typedef  TYPE_1__ ModelInput ;

/* Variables and functions */
 int /*<<< orphan*/  CL_MEM_READ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(ModelInput* s, int width, int height,
                      cl_device_id device_id, cl_context context) {
  int err;
  s->device_id = device_id;
  s->context = context;

  FUNC3(&s->transform, context, device_id);
  s->transformed_width = width;
  s->transformed_height = height;

  s->transformed_y_cl = FUNC1(s->context, CL_MEM_READ_WRITE,
                                       s->transformed_width*s->transformed_height, NULL, &err);
  FUNC0(err == 0);
  s->transformed_u_cl = FUNC1(s->context, CL_MEM_READ_WRITE,
                                       (s->transformed_width/2)*(s->transformed_height/2), NULL, &err);
  FUNC0(err == 0);
  s->transformed_v_cl = FUNC1(s->context, CL_MEM_READ_WRITE,
                                       (s->transformed_width/2)*(s->transformed_height/2), NULL, &err);
  FUNC0(err == 0);

  s->net_input_size = ((width*height*3)/2)*sizeof(float);
  s->net_input = FUNC1(s->context, CL_MEM_READ_WRITE,
                                s->net_input_size, (void*)NULL, &err);
  FUNC0(err == 0);

  FUNC2(&s->loadyuv, context, device_id, s->transformed_width, s->transformed_height);
}