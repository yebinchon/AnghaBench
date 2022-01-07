
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_merge_data {int fd2; char* name; int fence; } ;


 int SYNC_IOC_MERGE ;
 int ioctl (int,int ,struct sync_merge_data*) ;
 int strncpy (char*,char const*,int) ;

int sync_merge(const char *name, int fd1, int fd2)
{
 struct sync_merge_data data = {};
 int err;

 data.fd2 = fd2;
 strncpy(data.name, name, sizeof(data.name) - 1);
 data.name[sizeof(data.name) - 1] = '\0';

 err = ioctl(fd1, SYNC_IOC_MERGE, &data);
 if (err < 0)
  return err;

 return data.fence;
}
