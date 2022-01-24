#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_program ;
typedef  int /*<<< orphan*/  cl_device_id ;
typedef  int /*<<< orphan*/  cl_context ;
struct TYPE_4__ {void* m_uv_cl; void* m_y_cl; int /*<<< orphan*/  krnl; } ;
typedef  TYPE_1__ Transform ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  CL_MEM_READ_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC6(Transform* s, cl_context ctx, cl_device_id device_id) {
  int err = 0;
  FUNC5(s, 0, sizeof(*s));

  cl_program prg = FUNC0(ctx, device_id, "transforms/transform.cl", "");

  s->krnl = FUNC3(prg, "warpPerspective", &err);
  FUNC1(err == 0);

  // done with this
  err = FUNC4(prg);
  FUNC1(err == 0);

  s->m_y_cl = FUNC2(ctx, CL_MEM_READ_WRITE, 3*3*sizeof(float), NULL, &err);
  FUNC1(err == 0);

  s->m_uv_cl = FUNC2(ctx, CL_MEM_READ_WRITE, 3*3*sizeof(float), NULL, &err);
  FUNC1(err == 0);
}