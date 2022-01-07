
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef int sz ;
typedef int str ;
typedef int cl_platform_id ;
typedef int cl_device_type ;
typedef int cl_device_id ;


 int CL_DEVICE_MAX_WORK_GROUP_SIZE ;
 int CL_DEVICE_NAME ;
 int CL_DEVICE_TYPE ;



 int CL_DEVICE_VERSION ;
 int CL_PLATFORM_EXTENSIONS ;
 int CL_PLATFORM_PROFILE ;
 int CL_PLATFORM_VENDOR ;
 int clGetDeviceInfo (int ,int ,int,...) ;
 int clGetPlatformInfo (int ,int ,int,char*,int *) ;
 int free (char*) ;
 char* get_version_string (int ) ;
 int printf (char*,...) ;

void cl_print_info(cl_platform_id platform, cl_device_id device) {
  char str[4096];

  clGetPlatformInfo(platform, CL_PLATFORM_VENDOR, sizeof(str), str, ((void*)0));
  printf("vendor: '%s'\n", str);

  char* version = get_version_string(platform);
  printf("platform version: '%s'\n", version);
  free(version);

  clGetPlatformInfo(platform, CL_PLATFORM_PROFILE, sizeof(str), str, ((void*)0));
  printf("profile: '%s'\n", str);

  clGetPlatformInfo(platform, CL_PLATFORM_EXTENSIONS, sizeof(str), str, ((void*)0));
  printf("extensions: '%s'\n", str);

  clGetDeviceInfo(device, CL_DEVICE_NAME, sizeof(str), str, ((void*)0));
  printf("name: '%s'\n", str);

  clGetDeviceInfo(device, CL_DEVICE_VERSION, sizeof(str), str, ((void*)0));
  printf("device version: '%s'\n", str);

  size_t sz;
  clGetDeviceInfo(device, CL_DEVICE_MAX_WORK_GROUP_SIZE, sizeof(sz), &sz, ((void*)0));
  printf("max work group size: %u\n", sz);

  cl_device_type type;
  clGetDeviceInfo(device, CL_DEVICE_TYPE, sizeof(type), &type, ((void*)0));
  printf("type = 0x%04x = ", (unsigned int)type);
  switch(type) {
  case 129:
    printf("CL_DEVICE_TYPE_CPU\n");
    break;
  case 128:
    printf("CL_DEVICE_TYPE_GPU\n");
    break;
  case 130:
    printf("CL_DEVICE_TYPE_ACCELERATOR\n");
    break;
  default:
    printf("Other...\n" );
    break;
  }
}
