
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rbcfg_ctx {int buflen; char* tmp_file; char* mtd_device; scalar_t__ buf; } ;


 int O_CREAT ;
 int O_WRONLY ;
 int RB_ERR_IO ;
 int RB_MAGIC_SOFT ;
 int close (int) ;
 int cyg_ether_crc32 (unsigned char*,int) ;
 int fprintf (int ,char*,char*) ;
 int fsync (int) ;
 int open (char*,int) ;
 int put_u32 (scalar_t__,int ) ;
 struct rbcfg_ctx* rbcfg_ctx ;
 int stderr ;
 int write (int,scalar_t__,int) ;

__attribute__((used)) static int
rbcfg_update(int tmp)
{
 struct rbcfg_ctx *ctx = rbcfg_ctx;
 char *name;
 uint32_t crc;
 int fd;
 int err;

 put_u32(ctx->buf, RB_MAGIC_SOFT);
 put_u32(ctx->buf + 4, 0);
 crc = cyg_ether_crc32((unsigned char *) ctx->buf, ctx->buflen);
 put_u32(ctx->buf + 4, crc);

 name = (tmp) ? ctx->tmp_file : ctx->mtd_device;
 fd = open(name, O_WRONLY | O_CREAT);
 if (fd < 0) {
  fprintf(stderr, "unable to open %s for writing\n", name);
  err = RB_ERR_IO;
  goto out;
 }

 err = write(fd, ctx->buf, ctx->buflen);
 if (err != ctx->buflen) {
  err = RB_ERR_IO;
  goto out_close;
 }

 fsync(fd);
 err = 0;

 out_close:
 close(fd);
 out:
 return err;
}
