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
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  sz ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  cl_platform_id ;
typedef  int cl_device_type ;
typedef  int /*<<< orphan*/  cl_device_id ;

/* Variables and functions */
 int /*<<< orphan*/  CL_DEVICE_MAX_WORK_GROUP_SIZE ; 
 int /*<<< orphan*/  CL_DEVICE_NAME ; 
 int /*<<< orphan*/  CL_DEVICE_TYPE ; 
#define  CL_DEVICE_TYPE_ACCELERATOR 130 
#define  CL_DEVICE_TYPE_CPU 129 
#define  CL_DEVICE_TYPE_GPU 128 
 int /*<<< orphan*/  CL_DEVICE_VERSION ; 
 int /*<<< orphan*/  CL_PLATFORM_EXTENSIONS ; 
 int /*<<< orphan*/  CL_PLATFORM_PROFILE ; 
 int /*<<< orphan*/  CL_PLATFORM_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void FUNC5(cl_platform_id platform, cl_device_id device) {
  char str[4096];

  FUNC1(platform, CL_PLATFORM_VENDOR, sizeof(str), str, NULL);
  FUNC4("vendor: '%s'\n", str);

  char* version = FUNC3(platform);
  FUNC4("platform version: '%s'\n", version);
  FUNC2(version);

  FUNC1(platform, CL_PLATFORM_PROFILE, sizeof(str), str, NULL);
  FUNC4("profile: '%s'\n", str);

  FUNC1(platform, CL_PLATFORM_EXTENSIONS, sizeof(str), str, NULL);
  FUNC4("extensions: '%s'\n", str);

  FUNC0(device, CL_DEVICE_NAME, sizeof(str), str, NULL);
  FUNC4("name: '%s'\n", str);

  FUNC0(device, CL_DEVICE_VERSION, sizeof(str), str, NULL);
  FUNC4("device version: '%s'\n", str);

  size_t sz;
  FUNC0(device, CL_DEVICE_MAX_WORK_GROUP_SIZE, sizeof(sz), &sz, NULL);
  FUNC4("max work group size: %u\n", sz);

  cl_device_type type;
  FUNC0(device, CL_DEVICE_TYPE, sizeof(type), &type, NULL);
  FUNC4("type = 0x%04x = ", (unsigned int)type);
  switch(type) {
  case CL_DEVICE_TYPE_CPU:
    FUNC4("CL_DEVICE_TYPE_CPU\n");
    break;
  case CL_DEVICE_TYPE_GPU:
    FUNC4("CL_DEVICE_TYPE_GPU\n");
    break;
  case CL_DEVICE_TYPE_ACCELERATOR:
    FUNC4("CL_DEVICE_TYPE_ACCELERATOR\n");
    break;
  default:
    FUNC4("Other...\n" );
    break;
  }
}