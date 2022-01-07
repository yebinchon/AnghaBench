
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int SUCCESS ;
 int add_assoc_stringl_ex (int *,char*,int,char*,int) ;
 int add_assoc_zval (int *,char*,int *) ;
 int efree (char*) ;
 char* redis_sock_read (int *,int*) ;
 scalar_t__ redis_unpack (int *,char*,int,int *) ;

int mbulk_resp_loop_zipstr(RedisSock *redis_sock, zval *z_result,
                           long long count, void *ctx)
{
    char *line, *key = ((void*)0);
    int line_len, key_len = 0;
    long long idx = 0;


    if (count % 2 != 0) {
        return -1;
    }


    while (count--) {

        line = redis_sock_read(redis_sock, &line_len);
        if (!line) return -1;

        if (idx++ % 2 == 0) {

            key = line;
            key_len = line_len;
        } else {

            zval z_unpacked;
            if (redis_unpack(redis_sock, line, line_len, &z_unpacked)) {
                add_assoc_zval(z_result, key, &z_unpacked);
            } else {
                add_assoc_stringl_ex(z_result, key, key_len, line, line_len);
            }

            efree(line);
            efree(key);
        }
    }

    return SUCCESS;
}
