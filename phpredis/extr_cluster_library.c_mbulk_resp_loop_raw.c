
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int FAILURE ;
 int SUCCESS ;
 int add_next_index_stringl (int *,char*,int) ;
 int efree (char*) ;
 char* redis_sock_read (int *,int*) ;

int mbulk_resp_loop_raw(RedisSock *redis_sock, zval *z_result,
                        long long count, void *ctx)
{
    char *line;
    int line_len;


    while (count--) {

        line = redis_sock_read(redis_sock, &line_len);
        if (line == ((void*)0)) return FAILURE;


        add_next_index_stringl(z_result, line, line_len);
        efree(line);
    }


    return SUCCESS;
}
