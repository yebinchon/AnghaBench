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
typedef  int /*<<< orphan*/  args ;
struct TYPE_4__ {int width; int height; void* loaduv_krnl; void* loadys_krnl; } ;
typedef  TYPE_1__ LoadYUVState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,int) ; 

void FUNC6(LoadYUVState* s, cl_context ctx, cl_device_id device_id, int width, int height) {
  int err = 0;
  FUNC4(s, 0, sizeof(*s));

  s->width = width;
  s->height = height;

  char args[1024];
  FUNC5(args, sizeof(args),
           "-cl-fast-relaxed-math -cl-denorms-are-zero "
           "-DTRANSFORMED_WIDTH=%d -DTRANSFORMED_HEIGHT=%d",
           width, height);
  cl_program prg = FUNC0(ctx, device_id, "transforms/loadyuv.cl", args);

  s->loadys_krnl = FUNC2(prg, "loadys", &err);
  FUNC1(err == 0);
  s->loaduv_krnl = FUNC2(prg, "loaduv", &err);
  FUNC1(err == 0);

  // done with this
  err = FUNC3(prg);
  FUNC1(err == 0);
}