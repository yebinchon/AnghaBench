
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*,...) ;
 char* prom_getenv (char*) ;
 scalar_t__ simple_strtol (char*,int *,int ) ;
 int strncpy (char*,char*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int titan_parse_env_address(char *env_name, unsigned int *flash_base,
    unsigned int *flash_end)
{
 char image_name[30];
 char *env_ptr;
 char *base_ptr;
 char *end_ptr;
 char * string_ptr;

 env_ptr = prom_getenv(env_name);
 if(!env_ptr){
  printk("titan: invalid env name, %s.\n", env_name);
  return -1;
 }
 strncpy(image_name, env_ptr, 30);
 image_name[29]=0;
 string_ptr = image_name;

 base_ptr = strsep(&string_ptr, ",");
 end_ptr = strsep(&string_ptr, ",");
 if ((base_ptr == ((void*)0)) || (end_ptr == ((void*)0))) {
  printk("titan: Couldn't tokenize %s start,end.\n", image_name);
  return -1;
 }

 *flash_base = (unsigned int) simple_strtol(base_ptr, ((void*)0), 0);
 *flash_end = (unsigned int) simple_strtol(end_ptr, ((void*)0), 0);
 if((!*flash_base) || (!*flash_end)) {
  printk("titan: Unable to convert :%s: :%s: into start,end values.\n",
    env_name, image_name);
  return -1;
 }
 *flash_base &= 0x0fffffff;
 *flash_end &= 0x0fffffff;
 return 0;
}
