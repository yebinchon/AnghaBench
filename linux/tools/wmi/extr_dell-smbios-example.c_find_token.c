
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*,int) ;
 scalar_t__ strtol (char*,int *,int) ;
 char* token_sysfs ;

__attribute__((used)) static int find_token(__u16 token, __u16 *location, __u16 *value)
{
 char location_sysfs[60];
 char value_sysfs[57];
 char buf[4096];
 FILE *f;
 int ret;

 ret = sprintf(value_sysfs, "%s/%04x_value", token_sysfs, token);
 if (ret < 0) {
  printf("sprintf value failed\n");
  return 2;
 }
 f = fopen(value_sysfs, "rb");
 if (!f) {
  printf("failed to open %s\n", value_sysfs);
  return 2;
 }
 fread(buf, 1, 4096, f);
 fclose(f);
 *value = (__u16) strtol(buf, ((void*)0), 16);

 ret = sprintf(location_sysfs, "%s/%04x_location", token_sysfs, token);
 if (ret < 0) {
  printf("sprintf location failed\n");
  return 1;
 }
 f = fopen(location_sysfs, "rb");
 if (!f) {
  printf("failed to open %s\n", location_sysfs);
  return 2;
 }
 fread(buf, 1, 4096, f);
 fclose(f);
 *location = (__u16) strtol(buf, ((void*)0), 16);

 if (*location)
  return 0;
 return 2;
}
