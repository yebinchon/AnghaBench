
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int ZVAL_FALSE (int *) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int efree (char*) ;
 char* redis_sock_read_bulk_reply (int *,int) ;

int
redis_read_variant_bulk(RedisSock *redis_sock, int size, zval *z_ret
                       )
{

    char *bulk_resp = redis_sock_read_bulk_reply(redis_sock, size);


    if(bulk_resp == ((void*)0)) {
        ZVAL_FALSE(z_ret);
        return -1;
    }
    ZVAL_STRINGL(z_ret, bulk_resp, size);
    efree(bulk_resp);
    return 0;
}
