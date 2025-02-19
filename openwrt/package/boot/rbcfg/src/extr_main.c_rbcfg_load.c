
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rbcfg_ctx {char* tmp_file; char* mtd_device; int buflen; scalar_t__ buf; } ;


 int O_RDONLY ;
 int RB_ERR_INVALID ;
 int RB_ERR_IO ;
 scalar_t__ RB_MAGIC_SOFT ;
 int close (int) ;
 scalar_t__ cyg_ether_crc32 (unsigned char*,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ get_u32 (scalar_t__) ;
 int open (char*,int ) ;
 int put_u32 (int ,int ) ;
 int rbcfg_check_tmp (struct rbcfg_ctx*) ;
 int read (int,scalar_t__,int) ;
 int stderr ;

__attribute__((used)) static int
rbcfg_load(struct rbcfg_ctx *ctx)
{
 uint32_t magic;
 uint32_t crc_orig, crc;
 char *name;
 int tmp;
 int fd;
 int err;

 tmp = rbcfg_check_tmp(ctx);
 name = (tmp) ? ctx->tmp_file : ctx->mtd_device;

 fd = open(name, O_RDONLY);
 if (fd < 0) {
  fprintf(stderr, "unable to open %s\n", name);
  err = RB_ERR_IO;
  goto err;
 }

 err = read(fd, ctx->buf, ctx->buflen);
 if (err != ctx->buflen) {
  fprintf(stderr, "unable to read from %s\n", name);
  err = RB_ERR_IO;
  goto err_close;
 }

 magic = get_u32(ctx->buf);
 if (magic != RB_MAGIC_SOFT) {
  fprintf(stderr, "invalid configuration\n");
  err = RB_ERR_INVALID;
  goto err_close;
 }

 crc_orig = get_u32(ctx->buf + 4);
 put_u32(ctx->buf + 4, 0);
 crc = cyg_ether_crc32((unsigned char *) ctx->buf, ctx->buflen);
 if (crc != crc_orig) {
  fprintf(stderr, "configuration has CRC error\n");
  err = RB_ERR_INVALID;
  goto err_close;
 }

 err = 0;

 err_close:
 close(fd);
 err:
 return err;
}
