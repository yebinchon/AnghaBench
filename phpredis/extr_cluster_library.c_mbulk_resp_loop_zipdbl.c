
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int RedisSock ;


 int SUCCESS ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int add_assoc_double_ex (int *,char*,int,int ) ;
 int atof (char*) ;
 int efree (char*) ;
 char* redis_sock_read (int *,int*) ;
 scalar_t__ redis_unpack (int *,char*,int,int *) ;
 int zend_string_release (int *) ;
 int zval_dtor (int *) ;
 int * zval_get_string (int *) ;

int mbulk_resp_loop_zipdbl(RedisSock *redis_sock, zval *z_result,
                           long long count, void *ctx)
{
    char *line, *key = ((void*)0);
    int line_len, key_len = 0;
    long long idx = 0;


    if (count %2 != 0) {
        return -1;
    }


    while (count--) {
        line = redis_sock_read(redis_sock, &line_len);
        if (line != ((void*)0)) {
            if (idx++ % 2 == 0) {
                key = line;
                key_len = line_len;
            } else {
                zval zv, *z = &zv;
                if (redis_unpack(redis_sock,key,key_len, z)) {
                    zend_string *zstr = zval_get_string(z);
                    add_assoc_double_ex(z_result, ZSTR_VAL(zstr), ZSTR_LEN(zstr), atof(line));
                    zend_string_release(zstr);
                    zval_dtor(z);
                } else {
                    add_assoc_double_ex(z_result, key, key_len, atof(line));
                }


                efree(key);
                efree(line);
            }
        }
    }

    return SUCCESS;
}
