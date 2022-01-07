
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int errno ;
 int fseek (int *,int ,int ) ;
 scalar_t__ os_fseeki64 (int *,int,int ) ;
 int os_ftelli64 (int *) ;

int64_t os_fgetsize(FILE *file)
{
 int64_t cur_offset = os_ftelli64(file);
 int64_t size;
 int errval = 0;

 if (fseek(file, 0, SEEK_END) == -1)
  return -1;

 size = os_ftelli64(file);
 if (size == -1)
  errval = errno;

 if (os_fseeki64(file, cur_offset, SEEK_SET) != 0 && errval != 0)
  errno = errval;

 return size;
}
