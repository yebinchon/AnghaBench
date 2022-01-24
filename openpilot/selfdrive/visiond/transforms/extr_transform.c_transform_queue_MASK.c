#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ v; } ;
typedef  TYPE_1__ mat3 ;
typedef  int const cl_mem ;
typedef  int /*<<< orphan*/  cl_int ;
typedef  int /*<<< orphan*/  cl_command_queue ;
struct TYPE_8__ {int const m_y_cl; int const m_uv_cl; int /*<<< orphan*/  krnl; } ;
typedef  TYPE_2__ Transform ;

/* Variables and functions */
 int /*<<< orphan*/  CL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int const*) ; 
 TYPE_1__ FUNC4 (TYPE_1__,double) ; 

void FUNC5(Transform* s,
                     cl_command_queue q,
                     cl_mem in_yuv, int in_width, int in_height,
                     cl_mem out_y, cl_mem out_u, cl_mem out_v,
                     int out_width, int out_height,
                     mat3 projection) {
  int err = 0;
  const int zero = 0;

  // sampled using pixel center origin
  // (because thats how fastcv and opencv does it)

  mat3 projection_y = projection;

  // in and out uv is half the size of y.
  mat3 projection_uv = FUNC4(projection, 0.5);

  err = FUNC2(q, s->m_y_cl, CL_TRUE, 0, 3*3*sizeof(float), (void*)projection_y.v, 0, NULL, NULL);
  FUNC0(err == 0);
  err = FUNC2(q, s->m_uv_cl, CL_TRUE, 0, 3*3*sizeof(float), (void*)projection_uv.v, 0, NULL, NULL);
  FUNC0(err == 0);

  const int in_y_width = in_width;
  const int in_y_height = in_height;
  const int in_uv_width = in_width/2;
  const int in_uv_height = in_height/2;
  const int in_y_offset = 0;
  const int in_u_offset = in_y_offset + in_y_width*in_y_height;
  const int in_v_offset = in_u_offset + in_uv_width*in_uv_height;

  const int out_y_width = out_width;
  const int out_y_height = out_height;
  const int out_uv_width = out_width/2;
  const int out_uv_height = out_height/2;

  err = FUNC3(s->krnl, 0, sizeof(cl_mem), &in_yuv);
  FUNC0(err == 0);

  err = FUNC3(s->krnl, 1, sizeof(cl_int), &in_y_width);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 2, sizeof(cl_int), &in_y_offset);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 3, sizeof(cl_int), &in_y_height);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 4, sizeof(cl_int), &in_y_width);
  FUNC0(err == 0);

  err = FUNC3(s->krnl, 5, sizeof(cl_mem), &out_y);
  FUNC0(err == 0);

  err = FUNC3(s->krnl, 6, sizeof(cl_int), &out_y_width);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 7, sizeof(cl_int), &zero);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 8, sizeof(cl_int), &out_y_height);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 9, sizeof(cl_int), &out_y_width);
  FUNC0(err == 0);

  err = FUNC3(s->krnl, 10, sizeof(cl_mem), &s->m_y_cl);
  FUNC0(err == 0);

  const size_t work_size_y[2] = {out_y_width, out_y_height};

  err = FUNC1(q, s->krnl, 2, NULL,
                              (const size_t*)&work_size_y, NULL, 0, 0, NULL);
  FUNC0(err == 0);


  const size_t work_size_uv[2] = {out_uv_width, out_uv_height};

  err = FUNC3(s->krnl, 1, sizeof(cl_int), &in_uv_width);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 2, sizeof(cl_int), &in_u_offset);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 3, sizeof(cl_int), &in_uv_height);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 4, sizeof(cl_int), &in_uv_width);
  FUNC0(err == 0);

  err = FUNC3(s->krnl, 5, sizeof(cl_mem), &out_u);
  FUNC0(err == 0);

  err = FUNC3(s->krnl, 6, sizeof(cl_int), &out_uv_width);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 7, sizeof(cl_int), &zero);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 8, sizeof(cl_int), &out_uv_height);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 9, sizeof(cl_int), &out_uv_width);
  FUNC0(err == 0);

  err = FUNC3(s->krnl, 10, sizeof(cl_mem), &s->m_uv_cl);
  FUNC0(err == 0);

  err = FUNC1(q, s->krnl, 2, NULL,
                              (const size_t*)&work_size_uv, NULL, 0, 0, NULL);
  FUNC0(err == 0);


  err = FUNC3(s->krnl, 2, sizeof(cl_int), &in_v_offset);
  FUNC0(err == 0);
  err = FUNC3(s->krnl, 5, sizeof(cl_mem), &out_v);
  FUNC0(err == 0);


  err = FUNC1(q, s->krnl, 2, NULL,
                              (const size_t*)&work_size_uv, NULL, 0, 0, NULL);
  FUNC0(err == 0);
}