
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_source {int dummy; } ;
struct zip {int error; } ;
struct crc_context {int validate; scalar_t__ crc; scalar_t__ size; scalar_t__* e; scalar_t__ eof; } ;


 int ZIP_ER_INVAL ;
 int ZIP_ER_MEMORY ;
 int _zip_error_set (int *,int ,int ) ;
 int crc_read ;
 scalar_t__ malloc (int) ;
 struct zip_source* zip_source_layered (struct zip*,struct zip_source*,int ,struct crc_context*) ;

struct zip_source *
zip_source_crc(struct zip *za, struct zip_source *src, int validate)
{
    struct crc_context *ctx;

    if (src == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return ((void*)0);
    }

    if ((ctx=(struct crc_context *)malloc(sizeof(*ctx))) == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    ctx->eof = 0;
    ctx->validate = validate;
    ctx->e[0] = ctx->e[1] = 0;
    ctx->size = 0;
    ctx->crc = 0;

    return zip_source_layered(za, src, crc_read, ctx);
}
