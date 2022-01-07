
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char zval ;
typedef int zend_string ;
typedef int RedisSock ;


 int SUCCESS ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int add_assoc_bool_ex (char*,int ,int ,int ) ;
 int add_assoc_stringl_ex (char*,int ,int ,char*,int) ;
 int add_assoc_zval_ex (char*,int ,int ,char*) ;
 int efree (char*) ;
 char* redis_sock_read (int *,int*) ;
 scalar_t__ redis_unpack (int *,char*,int,char*) ;
 int zend_string_release (int *) ;
 int zval_dtor (char*) ;
 int * zval_get_string (char*) ;

int mbulk_resp_loop_assoc(RedisSock *redis_sock, zval *z_result,
                          long long count, void *ctx)
{
    char *line;
    int line_len,i = 0;
    zval *z_keys = ctx;


    while (count--) {
        zend_string *zstr = zval_get_string(&z_keys[i]);
        line = redis_sock_read(redis_sock, &line_len);

        if (line != ((void*)0)) {
            zval z_unpacked;
            if (redis_unpack(redis_sock, line, line_len, &z_unpacked)) {
                add_assoc_zval_ex(z_result, ZSTR_VAL(zstr), ZSTR_LEN(zstr), &z_unpacked);
            } else {
                add_assoc_stringl_ex(z_result, ZSTR_VAL(zstr), ZSTR_LEN(zstr), line, line_len);
            }
            efree(line);
        } else {
            add_assoc_bool_ex(z_result, ZSTR_VAL(zstr), ZSTR_LEN(zstr), 0);
        }


        zend_string_release(zstr);
        zval_dtor(&z_keys[i]);


        i++;
    }


    efree(z_keys);


    return SUCCESS;
}
