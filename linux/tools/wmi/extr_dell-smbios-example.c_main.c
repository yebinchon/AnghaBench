
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* input; int cmd_select; int cmd_class; } ;
struct dell_wmi_smbios_buffer {TYPE_1__ std; scalar_t__ length; } ;
typedef scalar_t__ __u64 ;


 int CAPSULE_DIS_TOKEN ;
 int CAPSULE_EN_TOKEN ;
 int CLASS_FLASH_INTERFACE ;
 int ENOMEM ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SELECT_FLASH_INTERFACE ;
 scalar_t__ activate_token (struct dell_wmi_smbios_buffer*,int ) ;
 int free (struct dell_wmi_smbios_buffer*) ;
 struct dell_wmi_smbios_buffer* malloc (scalar_t__) ;
 int printf (char*,...) ;
 int query_buffer_size (scalar_t__*) ;
 int query_token (int ,struct dell_wmi_smbios_buffer*) ;
 int run_wmi_smbios_cmd (struct dell_wmi_smbios_buffer*) ;
 int show_buffer (struct dell_wmi_smbios_buffer*) ;

int main(void)
{
 struct dell_wmi_smbios_buffer *buffer;
 int ret;
 __u64 value = 0;

 ret = query_buffer_size(&value);
 if (ret == EXIT_FAILURE || !value) {
  printf("Unable to read buffer size\n");
  goto out;
 }
 printf("Detected required buffer size %lld\n", value);

 buffer = malloc(value);
 if (buffer == ((void*)0)) {
  printf("failed to alloc memory for ioctl\n");
  ret = -ENOMEM;
  goto out;
 }
 buffer->length = value;


 buffer->std.cmd_class = CLASS_FLASH_INTERFACE;
 buffer->std.cmd_select = SELECT_FLASH_INTERFACE;
 buffer->std.input[0] = 2;
 ret = run_wmi_smbios_cmd(buffer);
 if (ret) {
  printf("smbios ioctl failed: %d\n", ret);
  ret = EXIT_FAILURE;
  goto out;
 }
 show_buffer(buffer);


 ret = query_token(CAPSULE_EN_TOKEN, buffer);
 printf("UEFI Capsule enabled token is: %d\n", ret);
 ret = query_token(CAPSULE_DIS_TOKEN, buffer);
 printf("UEFI Capsule disabled token is: %d\n", ret);


 if (ret) {
  printf("Enabling UEFI capsule token");
  if (activate_token(buffer, CAPSULE_EN_TOKEN)) {
   printf("activate failed\n");
   ret = -1;
   goto out;
  }
 }
 ret = EXIT_SUCCESS;
out:
 free(buffer);
 return ret;
}
