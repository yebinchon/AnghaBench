
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int inbuf ;
typedef int RedisSock ;
typedef scalar_t__ REDIS_REPLY_TYPE ;


 scalar_t__ TYPE_ERR ;
 int ZVAL_FALSE (int *) ;
 int ZVAL_STRINGL (int *,char*,size_t) ;
 int ZVAL_TRUE (int *) ;
 int redis_error_throw (int *) ;
 scalar_t__ redis_sock_gets (int *,char*,int,size_t*) ;
 int redis_sock_set_err (int *,char*,size_t) ;

__attribute__((used)) static int
redis_read_variant_line(RedisSock *redis_sock, REDIS_REPLY_TYPE reply_type,
                        int as_string, zval *z_ret)
{

    char inbuf[4096];
    size_t len;


    if(redis_sock_gets(redis_sock, inbuf, sizeof(inbuf), &len) < 0) {
        return -1;
    }


    if(reply_type == TYPE_ERR) {
        redis_sock_set_err(redis_sock, inbuf, len);
        redis_error_throw(redis_sock);
        ZVAL_FALSE(z_ret);
    } else if (as_string) {
        ZVAL_STRINGL(z_ret, inbuf, len);
    } else {
        ZVAL_TRUE(z_ret);
    }

    return 0;
}
