
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef size_t uint32_t ;
struct TYPE_4__ {int compression; } ;
typedef TYPE_1__ RedisSock ;


 int E2BIG ;


 size_t ZSTD_decompress (char*,size_t,char const*,int) ;
 size_t ZSTD_getFrameContentSize (char const*,int) ;
 int ZSTD_isError (size_t) ;
 int ZVAL_STRINGL (int *,char*,size_t) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 int errno ;
 size_t lzf_decompress (char const*,int,char*,int) ;
 int redis_unserialize (TYPE_1__*,char const*,int,int *) ;

int
redis_unpack(RedisSock *redis_sock, const char *val, int val_len, zval *z_ret)
{
    switch (redis_sock->compression) {
        case 129:
            break;
        case 128:
            break;
    }
    return redis_unserialize(redis_sock, val, val_len, z_ret);
}
