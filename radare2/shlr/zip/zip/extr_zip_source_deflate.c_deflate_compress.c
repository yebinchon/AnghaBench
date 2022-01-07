
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zip_uint64_t ;
typedef int zip_int64_t ;
struct zip_stat {int valid; int comp_size; int comp_method; } ;
struct zip_source {int dummy; } ;
struct TYPE_3__ {int * next_out; int avail_out; int * next_in; int avail_in; int * opaque; void* zfree; void* zalloc; } ;
struct deflate {int* e; int size; int eof; TYPE_1__ zstr; int mem_level; } ;
typedef enum zip_source_cmd { ____Placeholder_zip_source_cmd } zip_source_cmd ;


 int MAX_WBITS ;
 int ZIP_CM_DEFLATE ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_ZLIB ;






 int ZIP_STAT_COMP_METHOD ;
 int ZIP_STAT_COMP_SIZE ;
 int Z_BEST_COMPRESSION ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 void* Z_NULL ;
 int Z_OK ;
 int compress_read (struct zip_source*,struct deflate*,void*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit2 (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int deflate_free (struct deflate*) ;
 int memcpy (void*,int*,int) ;

__attribute__((used)) static zip_int64_t
deflate_compress(struct zip_source *src, void *ud, void *data,
   zip_uint64_t len, enum zip_source_cmd cmd)
{
    struct deflate *ctx;
    int ret;

    ctx = (struct deflate *)ud;

    switch (cmd) {
    case 130:
 ctx->zstr.zalloc = Z_NULL;
 ctx->zstr.zfree = Z_NULL;
 ctx->zstr.opaque = ((void*)0);
 ctx->zstr.avail_in = 0;
 ctx->zstr.next_in = ((void*)0);
 ctx->zstr.avail_out = 0;
 ctx->zstr.next_out = ((void*)0);


 if ((ret=deflateInit2(&ctx->zstr, Z_BEST_COMPRESSION, Z_DEFLATED,
         -MAX_WBITS, ctx->mem_level,
         Z_DEFAULT_STRATEGY)) != Z_OK) {
     ctx->e[0] = ZIP_ER_ZLIB;
     ctx->e[1] = ret;
     return -1;
 }

 return 0;

    case 129:
 return compress_read(src, ctx, data, len);

    case 133:
 deflateEnd(&ctx->zstr);
 return 0;

    case 128:
     {
     struct zip_stat *st;

     st = (struct zip_stat *)data;

     st->comp_method = ZIP_CM_DEFLATE;
     st->valid |= ZIP_STAT_COMP_METHOD;
     if (ctx->eof) {
  st->comp_size = ctx->size;
  st->valid |= ZIP_STAT_COMP_SIZE;
     }
     else
  st->valid &= ~ZIP_STAT_COMP_SIZE;
 }
 return 0;

    case 132:
 memcpy(data, ctx->e, sizeof(int)*2);
 return sizeof(int)*2;

    case 131:
 deflate_free(ctx);
 return 0;

    default:
 ctx->e[0] = ZIP_ER_INVAL;
 ctx->e[1] = 0;
 return -1;
    }
}
