
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zip_uint64_t ;
typedef int zip_int64_t ;
typedef void* uInt ;
struct zip_source {int dummy; } ;
struct TYPE_2__ {scalar_t__ avail_out; void* avail_in; int * next_in; int total_in; int * next_out; } ;
struct deflate {scalar_t__* e; int eof; TYPE_1__ zstr; scalar_t__ buffer; int size; } ;
typedef int Bytef ;


 scalar_t__ ZIP_ER_ZLIB ;


 int Z_FINISH ;





 int deflate (TYPE_1__*,int ) ;
 int zip_source_error (struct zip_source*,scalar_t__*,scalar_t__*) ;
 int zip_source_read (struct zip_source*,scalar_t__,int) ;

__attribute__((used)) static zip_int64_t
compress_read(struct zip_source *src, struct deflate *ctx,
       void *data, zip_uint64_t len)
{
    int end, ret;
    zip_int64_t n;

    if (ctx->e[0] != 0)
 return -1;

    if (len == 0)
 return 0;

    ctx->zstr.next_out = (Bytef *)data;
    ctx->zstr.avail_out = (uInt)len;

    end = 0;
    while (!end) {
 ret = deflate(&ctx->zstr, ctx->eof ? Z_FINISH : 0);

 switch (ret) {
 case 130:
 case 129:


     if (ctx->zstr.avail_out == 0
  || (ctx->eof && ctx->zstr.avail_in == 0))
  end = 1;
     break;

 case 134:
     if (ctx->zstr.avail_in == 0) {
  if (ctx->eof) {
      end = 1;
      break;
  }

  if ((n=zip_source_read(src, ctx->buffer, sizeof(ctx->buffer))) < 0) {
      zip_source_error(src, ctx->e, ctx->e+1);
      end = 1;
      break;
  }
  else if (n == 0) {
      ctx->eof = 1;
      ctx->size = ctx->zstr.total_in;

  }
  else {
      ctx->zstr.next_in = (Bytef *)ctx->buffer;
      ctx->zstr.avail_in = (uInt)n;
  }
  continue;
     }

 case 131:
 case 133:
 case 128:
 case 132:
     ctx->e[0] = ZIP_ER_ZLIB;
     ctx->e[1] = ret;

     end = 1;
     break;
 }
    }

    if (ctx->zstr.avail_out < len)
 return (zip_int64_t)(len - ctx->zstr.avail_out);

    return (ctx->e[0] == 0) ? 0 : -1;
}
