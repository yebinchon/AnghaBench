
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* output; scalar_t__* input; int cmd_select; int cmd_class; } ;
struct dell_wmi_smbios_buffer {TYPE_1__ std; } ;
typedef scalar_t__ __u16 ;


 int CLASS_TOKEN_READ ;
 int SELECT_TOKEN_STD ;
 int run_wmi_smbios_cmd (struct dell_wmi_smbios_buffer*) ;

__attribute__((used)) static int token_is_active(__u16 *location, __u16 *cmpvalue,
      struct dell_wmi_smbios_buffer *buffer)
{
 int ret;

 buffer->std.cmd_class = CLASS_TOKEN_READ;
 buffer->std.cmd_select = SELECT_TOKEN_STD;
 buffer->std.input[0] = *location;
 ret = run_wmi_smbios_cmd(buffer);
 if (ret != 0 || buffer->std.output[0] != 0)
  return ret;
 ret = (buffer->std.output[1] == *cmpvalue);
 return ret;
}
