
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int FILE ;


 int EINVAL ;
 int EXIT_SUCCESS ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (int *,int,int,int *) ;
 int ioctl_devfs ;

__attribute__((used)) static int query_buffer_size(__u64 *buffer_size)
{
 FILE *f;

 f = fopen(ioctl_devfs, "rb");
 if (!f)
  return -EINVAL;
 fread(buffer_size, sizeof(__u64), 1, f);
 fclose(f);
 return EXIT_SUCCESS;
}
