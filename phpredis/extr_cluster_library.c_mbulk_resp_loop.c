
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int SUCCESS ;
 int add_next_index_bool (int *,int ) ;
 int add_next_index_stringl (int *,char*,int) ;
 int add_next_index_zval (int *,int *) ;
 int efree (char*) ;
 char* redis_sock_read (int *,int*) ;
 scalar_t__ redis_unpack (int *,char*,int,int *) ;

int mbulk_resp_loop(RedisSock *redis_sock, zval *z_result,
                    long long count, void *ctx)
{
    char *line;
    int line_len;


    while (count--) {

        line = redis_sock_read(redis_sock, &line_len);

        if (line != ((void*)0)) {
            zval z_unpacked;
            if (redis_unpack(redis_sock, line, line_len, &z_unpacked)) {
                add_next_index_zval(z_result, &z_unpacked);
            } else {
                add_next_index_stringl(z_result, line, line_len);
            }
            efree(line);
        } else {
            if (line) efree(line);
            add_next_index_bool(z_result, 0);
        }
    }

    return SUCCESS;
}
