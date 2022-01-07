
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zip_uint64_t ;
typedef int zip_int64_t ;
typedef int uInt ;
struct zip_stat {int size; int comp_size; int comp_method; } ;
struct zip_source {int dummy; } ;
struct TYPE_3__ {int avail_in; int * next_in; int * opaque; void* zfree; void* zalloc; } ;
struct deflate {int* e; TYPE_1__ zstr; scalar_t__ buffer; } ;
typedef enum zip_source_cmd { ____Placeholder_zip_source_cmd } zip_source_cmd ;
typedef int Bytef ;


 int MAX_WBITS ;
 int ZIP_CM_STORE ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_ZLIB ;


 int ZIP_SOURCE_ERR_LOWER ;




 void* Z_NULL ;
 int Z_OK ;
 int decompress_read (struct zip_source*,struct deflate*,void*,int) ;
 int free (struct deflate*) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit2 (TYPE_1__*,int ) ;
 int memcpy (void*,int*,int) ;
 int zip_source_read (struct zip_source*,scalar_t__,int) ;

__attribute__((used)) static zip_int64_t
deflate_decompress(struct zip_source *src, void *ud, void *data,
     zip_uint64_t len, enum zip_source_cmd cmd)
{
    struct deflate *ctx;
    zip_int64_t n;
    int ret;

    ctx = (struct deflate *)ud;

    switch (cmd) {
    case 130:
 if ((n=zip_source_read(src, ctx->buffer, sizeof(ctx->buffer))) < 0)
     return ZIP_SOURCE_ERR_LOWER;

 ctx->zstr.zalloc = Z_NULL;
 ctx->zstr.zfree = Z_NULL;
 ctx->zstr.opaque = ((void*)0);
 ctx->zstr.next_in = (Bytef *)ctx->buffer;
 ctx->zstr.avail_in = (uInt)n ;


 if ((ret=inflateInit2(&ctx->zstr, -MAX_WBITS)) != Z_OK) {
     ctx->e[0] = ZIP_ER_ZLIB;
     ctx->e[1] = ret;

     return -1;
 }
 return 0;

    case 129:
 return decompress_read(src, ctx, data, len);

    case 133:
 inflateEnd(&ctx->zstr);
 return 0;

    case 128:
 {
     struct zip_stat *st;

     st = (struct zip_stat *)data;

     st->comp_method = ZIP_CM_STORE;
     if (st->comp_size > 0 && st->size > 0)
  st->comp_size = st->size;
 }
 return 0;

    case 132:
 if (len < sizeof(int)*2)
     return -1;

 memcpy(data, ctx->e, sizeof(int)*2);
 return sizeof(int)*2;

    case 131:

 free(ctx);
 return 0;

    default:
 ctx->e[0] = ZIP_ER_INVAL;
 ctx->e[1] = 0;
 return -1;
    }

}
