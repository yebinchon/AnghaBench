
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef size_t uint32_t ;
struct TYPE_4__ {int compression; int compression_level; } ;
typedef TYPE_1__ RedisSock ;


 int LZF_MARGIN ;
 int MAX (int ,size_t) ;
 int MIN (int ,int ) ;


 int UINT_MAX ;
 int ZSTD_CLEVEL_DEFAULT ;
 size_t ZSTD_compress (char*,size_t,char*,size_t,int) ;
 size_t ZSTD_compressBound (size_t) ;
 int ZSTD_isError (size_t) ;
 int ZSTD_maxCLevel () ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 char* erealloc (char*,size_t) ;
 size_t lzf_compress (char*,size_t,char*,double) ;
 int redis_serialize (TYPE_1__*,int *,char**,size_t*) ;

int
redis_pack(RedisSock *redis_sock, zval *z, char **val, size_t *val_len)
{
    char *buf;
    int valfree;
    size_t len;

    valfree = redis_serialize(redis_sock, z, &buf, &len);
    switch (redis_sock->compression) {
        case 129:
            break;
        case 128:
            break;
    }
    *val = buf;
    *val_len = len;
    return valfree;
}
