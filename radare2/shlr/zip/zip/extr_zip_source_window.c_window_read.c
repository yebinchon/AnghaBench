
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint64_t ;
typedef int zip_int64_t ;
struct zip_stat {int valid; int size; } ;
struct zip_source {int dummy; } ;
struct window {int skip; int left; void** e; int len; } ;
typedef enum zip_source_cmd { ____Placeholder_zip_source_cmd } zip_source_cmd ;
typedef int b ;


 void* ZIP_ER_EOF ;


 int ZIP_SOURCE_ERR_LOWER ;




 int ZIP_STAT_COMP_SIZE ;
 int ZIP_STAT_CRC ;
 int ZIP_STAT_SIZE ;
 int free (struct window*) ;
 int memcpy (void*,void**,int) ;
 int zip_source_read (struct zip_source*,void*,int) ;

__attribute__((used)) static zip_int64_t
window_read(struct zip_source *src, void *_ctx, void *data,
     zip_uint64_t len, enum zip_source_cmd cmd)
{
    struct window *ctx;
    zip_int64_t ret;
    zip_uint64_t n, i;
    char b[8192];

    ctx = (struct window *)_ctx;

    switch (cmd) {
    case 130:
 for (n=0; n<ctx->skip; n+=(zip_uint64_t)ret) {
     i = (ctx->skip-n > sizeof(b) ? sizeof(b) : ctx->skip-n);
     if ((ret=zip_source_read(src, b, i)) < 0)
  return ZIP_SOURCE_ERR_LOWER;
     if (ret==0) {
  ctx->e[0] = ZIP_ER_EOF;
  ctx->e[1] = 0;
  return -1;
     }
 }
 return 0;

    case 129:
 if (len > ctx->left)
     len = ctx->left;

 if (len == 0)
     return 0;

 if ((ret=zip_source_read(src, data, len)) < 0)
     return ZIP_SOURCE_ERR_LOWER;

 ctx->left -= (zip_uint64_t)ret;

        if (ret == 0) {
     if (ctx->left > 0) {
  ctx->e[0] = ZIP_ER_EOF;
  ctx->e[1] = 0;
  return -1;
     }
 }
 return ret;

    case 133:
 return 0;

    case 128:
 {
     struct zip_stat *st;

     st = (struct zip_stat *)data;

     st->size = ctx->len;
     st->valid |= ZIP_STAT_SIZE;
     st->valid &= ~(ZIP_STAT_CRC|ZIP_STAT_COMP_SIZE);
 }
 return 0;

    case 132:
 memcpy(data, ctx->e, sizeof(ctx->e));
 return 0;

    case 131:
 free(ctx);
 return 0;

    default:
 return -1;
    }

}
