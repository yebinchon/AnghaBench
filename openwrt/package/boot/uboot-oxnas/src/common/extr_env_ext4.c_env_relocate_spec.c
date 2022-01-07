
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int block_dev_desc_t ;


 int CONFIG_ENV_SIZE ;
 int EXT4_ENV_DEVICE ;
 char* EXT4_ENV_FILE ;
 char* EXT4_ENV_INTERFACE ;
 int EXT4_ENV_PART ;
 int env_import (char*,int) ;
 int ext4_read_file (char*,int *,int ,int) ;
 int ext4_register_device (int *,int) ;
 int ext4fs_close () ;
 int * get_dev (char*,int) ;
 int printf (char*,char*,...) ;
 int set_default_env (int *) ;

void env_relocate_spec(void)
{
 char buf[CONFIG_ENV_SIZE];
 block_dev_desc_t *dev_desc = ((void*)0);
 int dev = EXT4_ENV_DEVICE;
 int part = EXT4_ENV_PART;
 int err;

 dev_desc = get_dev(EXT4_ENV_INTERFACE, dev);
 if (dev_desc == ((void*)0)) {
  printf("Failed to find %s%d\n",
   EXT4_ENV_INTERFACE, dev);
  set_default_env(((void*)0));
  return;
 }

 err = ext4_register_device(dev_desc, part);
 if (err) {
  printf("Failed to register %s%d:%d\n",
   EXT4_ENV_INTERFACE, dev, part);
  set_default_env(((void*)0));
  return;
 }

 err = ext4_read_file(EXT4_ENV_FILE, (uchar *)&buf, 0, CONFIG_ENV_SIZE);
 ext4fs_close();

 if (err == -1) {
  printf("\n** Unable to read \"%s\" from %s%d:%d **\n",
   EXT4_ENV_FILE, EXT4_ENV_INTERFACE, dev, part);
  set_default_env(((void*)0));
  return;
 }

 env_import(buf, 1);
}
