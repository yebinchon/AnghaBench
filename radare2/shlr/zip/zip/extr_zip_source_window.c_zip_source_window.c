
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* zip_uint64_t ;
struct zip_source {int dummy; } ;
struct zip {int error; } ;
struct window {void* left; void* len; void* skip; } ;


 int ZIP_ER_INVAL ;
 int ZIP_ER_MEMORY ;
 int _zip_error_set (int *,int ,int ) ;
 scalar_t__ malloc (int) ;
 int window_read ;
 struct zip_source* zip_source_layered (struct zip*,struct zip_source*,int ,struct window*) ;

struct zip_source *
zip_source_window(struct zip *za, struct zip_source *src, zip_uint64_t start, zip_uint64_t len)
{
    struct window *ctx;

    if (src == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return ((void*)0);
    }

    if ((ctx=(struct window *)malloc(sizeof(*ctx))) == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    ctx->skip = start;
    ctx->len = len;
    ctx->left = len;

    return zip_source_layered(za, src, window_read, ctx);
}
