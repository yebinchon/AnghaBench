
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_int32_t ;
struct zip_source {int dummy; } ;
struct zip {int error; } ;
struct deflate {int mem_level; scalar_t__ eof; scalar_t__* e; } ;


 int MAX_MEM_LEVEL ;
 int TORRENT_MEM_LEVEL ;
 int ZIP_AFL_TORRENT ;
 scalar_t__ ZIP_CM_DEFLATE ;
 int ZIP_CM_IS_DEFAULT (scalar_t__) ;
 int ZIP_CODEC_ENCODE ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_MEMORY ;
 int _zip_error_set (int *,int ,int ) ;
 int deflate_compress ;
 int deflate_decompress ;
 int deflate_free (struct deflate*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ zip_get_archive_flag (struct zip*,int ,int ) ;
 struct zip_source* zip_source_layered (struct zip*,struct zip_source*,int ,struct deflate*) ;

struct zip_source *
zip_source_deflate(struct zip *za, struct zip_source *src,
     zip_int32_t cm, int flags)
{
    struct deflate *ctx;
    struct zip_source *s2;

    if (src == ((void*)0) || (cm != ZIP_CM_DEFLATE && !ZIP_CM_IS_DEFAULT(cm))) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return ((void*)0);
    }

    if ((ctx=(struct deflate *)malloc(sizeof(*ctx))) == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    ctx->e[0] = ctx->e[1] = 0;
    ctx->eof = 0;
    if (flags & ZIP_CODEC_ENCODE) {
 if (zip_get_archive_flag(za, ZIP_AFL_TORRENT, 0))
     ctx->mem_level = TORRENT_MEM_LEVEL;
 else
     ctx->mem_level = MAX_MEM_LEVEL;
    }

    if ((s2=zip_source_layered(za, src,
          ((flags & ZIP_CODEC_ENCODE)
    ? deflate_compress : deflate_decompress),
          ctx)) == ((void*)0)) {
 deflate_free(ctx);
 return ((void*)0);
    }

    return s2;
}
