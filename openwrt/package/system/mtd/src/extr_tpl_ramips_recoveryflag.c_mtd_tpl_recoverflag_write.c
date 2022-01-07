
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct uboot_args {scalar_t__ magic; } ;
struct erase_info_user {int length; scalar_t__ start; } ;


 int MEMERASE ;
 scalar_t__ TPL_NO_RECOVER_MAGIC ;
 scalar_t__ TPL_RECOVER_MAGIC ;
 int close (int) ;
 int erasesize ;
 int fprintf (int ,char*,...) ;
 int free (struct uboot_args*) ;
 int ioctl (int,int ,struct erase_info_user*) ;
 struct uboot_args* malloc (int ) ;
 int mtd_check_open (char const*) ;
 int pread (int,struct uboot_args*,int ,int ) ;
 int pwrite (int,struct uboot_args*,int ,int ) ;
 int stderr ;
 int sync () ;

int mtd_tpl_recoverflag_write(const char *mtd, const bool recovery_active)
{
 struct erase_info_user erase_info;
 struct uboot_args *args;
 uint32_t magic;
 int ret = 0;
 int fd;

 args = malloc(erasesize);
 if (!args) {
  fprintf(stderr, "Could not allocate memory!\n");
  return -1;
 }

 fd = mtd_check_open(mtd);
 if (fd < 0) {
  fprintf(stderr, "Could not open mtd device: %s\n", mtd);
  ret = -1;
  goto out;
 }


 pread(fd, args, erasesize, 0);


 magic = TPL_RECOVER_MAGIC;
 if (!recovery_active)
  magic = TPL_NO_RECOVER_MAGIC;


 if (magic == args->magic)
  goto out;


 erase_info.start = 0;
 erase_info.length = erasesize;

 ret = ioctl(fd, MEMERASE, &erase_info);
 if (ret < 0) {
  fprintf(stderr, "failed to erase block: %i\n", ret);
  goto out;
 }


 args->magic = magic;

 ret = pwrite(fd, args, erasesize, 0);
 if (ret < 0)
  fprintf(stderr, "failed to write: %i\n", ret);

 sync();
out:
 free(args);
 close(fd);

 return ret;
}
