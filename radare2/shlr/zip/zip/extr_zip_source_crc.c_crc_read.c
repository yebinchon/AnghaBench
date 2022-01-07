
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint64_t ;
typedef void* zip_uint32_t ;
typedef int zip_int64_t ;
typedef int uInt ;
struct zip_stat {int valid; int encryption_method; int comp_method; int comp_size; void* crc; int size; } ;
struct zip_source {int dummy; } ;
struct crc_context {int eof; int * e; int size; void* crc; int validate; } ;
typedef enum zip_source_cmd { ____Placeholder_zip_source_cmd } zip_source_cmd ;
typedef int Bytef ;


 int ZIP_CM_STORE ;
 int ZIP_EM_NONE ;
 int ZIP_ER_CRC ;
 int ZIP_ER_INCONS ;


 int ZIP_SOURCE_ERR_LOWER ;




 int ZIP_STAT_COMP_METHOD ;
 int ZIP_STAT_COMP_SIZE ;
 int ZIP_STAT_CRC ;
 int ZIP_STAT_ENCRYPTION_METHOD ;
 int ZIP_STAT_SIZE ;
 int crc32 (void*,int const*,int ) ;
 int free (struct crc_context*) ;
 int memcpy (void*,int *,int) ;
 int zip_source_read (struct zip_source*,void*,int ) ;
 int zip_source_stat (struct zip_source*,struct zip_stat*) ;

__attribute__((used)) static zip_int64_t
crc_read(struct zip_source *src, void *_ctx, void *data,
  zip_uint64_t len, enum zip_source_cmd cmd)
{
    struct crc_context *ctx;
    zip_int64_t n;

    ctx = (struct crc_context *)_ctx;

    switch (cmd) {
    case 130:
 ctx->eof = 0;
 ctx->crc = (zip_uint32_t)crc32(0, ((void*)0), 0);
 ctx->size = 0;

 return 0;

    case 129:
 if (ctx->eof || len == 0)
     return 0;

 if ((n=zip_source_read(src, data, len)) < 0)
     return ZIP_SOURCE_ERR_LOWER;

 if (n == 0) {
     ctx->eof = 1;
     if (ctx->validate) {
  struct zip_stat st;

  if (zip_source_stat(src, &st) < 0)
      return ZIP_SOURCE_ERR_LOWER;

  if ((st.valid & ZIP_STAT_CRC) && st.crc != ctx->crc) {
      ctx->e[0] = ZIP_ER_CRC;
      ctx->e[1] = 0;

      return -1;
  }
  if ((st.valid & ZIP_STAT_SIZE) && st.size != ctx->size) {
      ctx->e[0] = ZIP_ER_INCONS;
      ctx->e[1] = 0;

      return -1;
  }
     }
 }
 else {
     ctx->size += (zip_uint64_t)n;
     ctx->crc = (zip_uint32_t)crc32(ctx->crc, (const Bytef *)data, (uInt)n);
 }
 return n;

    case 133:
 return 0;

    case 128:
 {
     struct zip_stat *st;

     st = (struct zip_stat *)data;

     if (ctx->eof) {


  st->size = ctx->size;
  st->crc = ctx->crc;
  st->comp_size = ctx->size;
  st->comp_method = ZIP_CM_STORE;
  st->encryption_method = ZIP_EM_NONE;
  st->valid |= ZIP_STAT_SIZE|ZIP_STAT_CRC|ZIP_STAT_COMP_SIZE|ZIP_STAT_COMP_METHOD|ZIP_STAT_ENCRYPTION_METHOD;;
     }
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
