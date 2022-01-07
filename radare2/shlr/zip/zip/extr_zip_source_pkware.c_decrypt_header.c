
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short zip_uint8_t ;
typedef int zip_int64_t ;
struct zip_stat {unsigned short crc; int mtime; } ;
struct zip_source {int dummy; } ;
struct trad_pkware {scalar_t__* e; } ;


 int HEADERLEN ;
 scalar_t__ ZIP_ER_EOF ;
 scalar_t__ ZIP_ER_WRONGPASSWD ;
 int _zip_u2d_time (int ,unsigned short*,unsigned short*) ;
 int decrypt (struct trad_pkware*,unsigned short*,unsigned short*,int,int ) ;
 int zip_source_error (struct zip_source*,scalar_t__*,scalar_t__*) ;
 int zip_source_read (struct zip_source*,unsigned short*,int) ;
 scalar_t__ zip_source_stat (struct zip_source*,struct zip_stat*) ;

__attribute__((used)) static int
decrypt_header(struct zip_source *src, struct trad_pkware *ctx)
{
    zip_uint8_t header[HEADERLEN];
    struct zip_stat st;
    zip_int64_t n;
    unsigned short dostime, dosdate;

    if ((n=zip_source_read(src, header, HEADERLEN)) < 0) {
 zip_source_error(src, ctx->e, ctx->e+1);
 return -1;
    }

    if (n != HEADERLEN) {
 ctx->e[0] = ZIP_ER_EOF;
 ctx->e[1] = 0;
 return -1;
    }

    decrypt(ctx, header, header, HEADERLEN, 0);

    if (zip_source_stat(src, &st) < 0) {

 return 0;
    }

    _zip_u2d_time(st.mtime, &dostime, &dosdate);

    if (header[HEADERLEN-1] != st.crc>>24
 && header[HEADERLEN-1] != dostime>>8) {
 ctx->e[0] = ZIP_ER_WRONGPASSWD;
 ctx->e[1] = 0;
 return -1;
    }

    return 0;
}
