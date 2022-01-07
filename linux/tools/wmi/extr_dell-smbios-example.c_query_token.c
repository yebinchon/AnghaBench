
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dell_wmi_smbios_buffer {int dummy; } ;
typedef int __u16 ;


 int find_token (int,int*,int*) ;
 int printf (char*,int) ;
 int token_is_active (int*,int*,struct dell_wmi_smbios_buffer*) ;

__attribute__((used)) static int query_token(__u16 token, struct dell_wmi_smbios_buffer *buffer)
{
 __u16 location;
 __u16 value;
 int ret;

 ret = find_token(token, &location, &value);
 if (ret != 0) {
  printf("unable to find token %04x\n", token);
  return 1;
 }
 return token_is_active(&location, &value, buffer);
}
