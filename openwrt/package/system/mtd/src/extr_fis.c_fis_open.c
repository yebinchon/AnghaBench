
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fis_image_desc {int dummy; } ;


 struct fis_image_desc* MAP_FAILED ;
 int MAP_LOCKED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (scalar_t__) ;
 int erasesize ;
 int fis_close () ;
 struct fis_image_desc* fis_desc ;
 int fis_erasesize ;
 scalar_t__ fis_fd ;
 struct fis_image_desc* mmap (int *,int ,int,int,scalar_t__,int ) ;
 scalar_t__ mtd_check_open (char*) ;
 scalar_t__ mtd_open (char*,int) ;

__attribute__((used)) static struct fis_image_desc *
fis_open(void)
{
 struct fis_image_desc *desc;

 if (fis_fd >= 0)
  fis_close();

 fis_fd = mtd_check_open("FIS directory");
 if (fis_fd < 0)
  goto error;

 close(fis_fd);
 fis_fd = mtd_open("FIS directory", 1);
 if (fis_fd < 0)
  goto error;

 fis_erasesize = erasesize;
 desc = mmap(((void*)0), erasesize, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_LOCKED, fis_fd, 0);
 if (desc == MAP_FAILED)
  goto error;

 fis_desc = desc;
 return desc;

error:
 fis_close();
 return ((void*)0);
}
