#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  cl_program ;
typedef  int /*<<< orphan*/  cl_device_id ;
typedef  int cl_build_status ;

/* Variables and functions */
 int /*<<< orphan*/  CL_PROGRAM_BUILD_LOG ; 
 int /*<<< orphan*/  CL_PROGRAM_BUILD_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 

void FUNC5(cl_program program, cl_device_id device) {
  cl_build_status status;
  FUNC2(program, device, CL_PROGRAM_BUILD_STATUS,
          sizeof(cl_build_status), &status, NULL);

  size_t log_size;
  FUNC2(program, device,
          CL_PROGRAM_BUILD_LOG, 0, NULL, &log_size);

  char* log = FUNC1(log_size+1, 1);
  FUNC0(log);

  FUNC2(program, device,
          CL_PROGRAM_BUILD_LOG, log_size+1, log, NULL);

  FUNC4("build failed; status=%d, log:\n%s\n",
          status, log);

  FUNC3(log);
}