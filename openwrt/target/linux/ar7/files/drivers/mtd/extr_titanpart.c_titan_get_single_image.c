
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*) ;
 char* prom_getenv (char*) ;
 int strncpy (char*,char*,int) ;
 char* strsep (char**,char*) ;
 int titan_parse_env_address (char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int titan_get_single_image(char *bootcfg_name, unsigned int *flash_base,
    unsigned int *flash_end)
{
 char *env_ptr;
 char *base_ptr;
 char *end_ptr;
 char image_name[30];
 char * string_ptr;

 if(!bootcfg_name || !flash_base || !flash_end)
  return -1;

 env_ptr = prom_getenv(bootcfg_name);
 if(!env_ptr){
  printk("titan: %s variable not found.\n", bootcfg_name);
  return -1;
 }

 string_ptr = image_name;

 strncpy(image_name, env_ptr, 30);
 image_name[29]=0;

 end_ptr=strsep(&string_ptr, "\"");
 base_ptr=strsep(&string_ptr, "\"");
 if(!end_ptr || !base_ptr){
  printk("titan: invalid bootcfg format, %s.\n", image_name);
  return -1;
 }


 return titan_parse_env_address(base_ptr, flash_base, flash_end);
}
