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
typedef  int /*<<< orphan*/  mat3 ;
typedef  int /*<<< orphan*/  cl_mem ;
typedef  int /*<<< orphan*/  cl_command_queue ;
struct TYPE_3__ {int /*<<< orphan*/  net_input_size; int /*<<< orphan*/  net_input; int /*<<< orphan*/  transformed_v_cl; int /*<<< orphan*/  transformed_u_cl; int /*<<< orphan*/  transformed_y_cl; int /*<<< orphan*/  loadyuv; int /*<<< orphan*/  transformed_height; int /*<<< orphan*/  transformed_width; int /*<<< orphan*/  transform; } ;
typedef  TYPE_1__ ModelInput ;

/* Variables and functions */
 int /*<<< orphan*/  CL_MAP_READ ; 
 int /*<<< orphan*/  CL_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

float *FUNC4(ModelInput* s, cl_command_queue q,
                           cl_mem yuv_cl, int width, int height,
                           mat3 transform) {
  int err;
  int i = 0;
  FUNC3(&s->transform, q,
                  yuv_cl, width, height,
                  s->transformed_y_cl, s->transformed_u_cl, s->transformed_v_cl,
                  s->transformed_width, s->transformed_height,
                  transform);
  FUNC2(&s->loadyuv, q,
                s->transformed_y_cl, s->transformed_u_cl, s->transformed_v_cl,
                s->net_input);
  float *net_input_buf = (float *)FUNC0(q, s->net_input, CL_TRUE,
                                            CL_MAP_READ, 0, s->net_input_size,
                                            0, NULL, NULL, &err);
  FUNC1(q);
  return net_input_buf;
}