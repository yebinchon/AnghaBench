
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef scalar_t__ zip_uint16_t ;
struct zip_source {int dummy; } ;
struct zip {int error; } ;
struct trad_pkware {int * key; scalar_t__* e; } ;


 int KEY0 ;
 int KEY1 ;
 int KEY2 ;
 int ZIP_CODEC_ENCODE ;
 scalar_t__ ZIP_EM_TRAD_PKWARE ;
 int ZIP_ER_ENCRNOTSUPP ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_MEMORY ;
 int _zip_error_set (int *,int ,int ) ;
 int decrypt (struct trad_pkware*,int *,int const*,int ,int) ;
 scalar_t__ malloc (int) ;
 int pkware_decrypt ;
 int pkware_free (struct trad_pkware*) ;
 int strlen (char const*) ;
 struct zip_source* zip_source_layered (struct zip*,struct zip_source*,int ,struct trad_pkware*) ;

struct zip_source *
zip_source_pkware(struct zip *za, struct zip_source *src,
    zip_uint16_t em, int flags, const char *password)
{
    struct trad_pkware *ctx;
    struct zip_source *s2;

    if (password == ((void*)0) || src == ((void*)0) || em != ZIP_EM_TRAD_PKWARE) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return ((void*)0);
    }
    if (flags & ZIP_CODEC_ENCODE) {
 _zip_error_set(&za->error, ZIP_ER_ENCRNOTSUPP, 0);
 return ((void*)0);
    }

    if ((ctx=(struct trad_pkware *)malloc(sizeof(*ctx))) == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    ctx->e[0] = ctx->e[1] = 0;

    ctx->key[0] = KEY0;
    ctx->key[1] = KEY1;
    ctx->key[2] = KEY2;
    decrypt(ctx, ((void*)0), (const zip_uint8_t *)password, strlen(password), 1);

    if ((s2=zip_source_layered(za, src, pkware_decrypt, ctx)) == ((void*)0)) {
 pkware_free(ctx);
 return ((void*)0);
    }

    return s2;
}
