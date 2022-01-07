
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef int zip_uint64_t ;
typedef int zip_int64_t ;
struct zip_stat {int valid; int comp_size; int encryption_method; } ;
struct zip_source {int dummy; } ;
struct trad_pkware {int * e; } ;
typedef enum zip_source_cmd { ____Placeholder_zip_source_cmd } zip_source_cmd ;


 int HEADERLEN ;
 int ZIP_EM_NONE ;
 int ZIP_ER_INVAL ;


 int ZIP_SOURCE_ERR_LOWER ;




 int ZIP_STAT_COMP_SIZE ;
 int ZIP_STAT_ENCRYPTION_METHOD ;
 int decrypt (struct trad_pkware*,int *,int *,int ,int ) ;
 int decrypt_header (struct zip_source*,struct trad_pkware*) ;
 int memcpy (void*,int *,int) ;
 int pkware_free (struct trad_pkware*) ;
 int zip_source_read (struct zip_source*,void*,int ) ;

__attribute__((used)) static zip_int64_t
pkware_decrypt(struct zip_source *src, void *ud, void *data,
        zip_uint64_t len, enum zip_source_cmd cmd)
{
    struct trad_pkware *ctx;
    zip_int64_t n;

    ctx = (struct trad_pkware *)ud;

    switch (cmd) {
    case 130:
 if (decrypt_header(src, ctx) < 0)
     return -1;
 return 0;

    case 129:
 if ((n=zip_source_read(src, data, len)) < 0)
     return ZIP_SOURCE_ERR_LOWER;

 decrypt((struct trad_pkware *)ud, (zip_uint8_t *)data, (zip_uint8_t *)data, (zip_uint64_t)n,
  0);
 return n;

    case 133:
 return 0;

    case 128:
 {
     struct zip_stat *st;

     st = (struct zip_stat *)data;

     st->encryption_method = ZIP_EM_NONE;
     st->valid |= ZIP_STAT_ENCRYPTION_METHOD;

     if (st->valid & ZIP_STAT_COMP_SIZE)
  st->comp_size -= HEADERLEN;
 }
 return 0;

    case 132:
 memcpy(data, ctx->e, sizeof(int)*2);
 return sizeof(int)*2;

    case 131:
 pkware_free(ctx);
 return 0;

    default:
 ctx->e[0] = ZIP_ER_INVAL;
 ctx->e[1] = 0;
 return -1;
    }
}
