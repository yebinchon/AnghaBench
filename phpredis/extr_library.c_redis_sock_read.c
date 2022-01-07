
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inbuf ;
typedef int RedisSock ;


 int atoi (char*) ;
 char* estrndup (char*,int) ;
 int memcmp (char*,char*,int) ;
 int redis_error_throw (int *) ;
 int redis_exception_ce ;
 scalar_t__ redis_sock_gets (int *,char*,int,size_t*) ;
 char* redis_sock_read_bulk_reply (int *,int) ;
 int redis_sock_set_err (int *,char*,size_t) ;
 int zend_throw_exception_ex (int ,int ,char*,char) ;

char *
redis_sock_read(RedisSock *redis_sock, int *buf_len)
{
    char inbuf[4096];
    size_t len;

    *buf_len = 0;
    if (redis_sock_gets(redis_sock, inbuf, sizeof(inbuf) - 1, &len) < 0) {
        return ((void*)0);
    }

    switch(inbuf[0]) {
        case '-':
            redis_sock_set_err(redis_sock, inbuf+1, len);


            redis_error_throw(redis_sock);

            return ((void*)0);
        case '$':
            *buf_len = atoi(inbuf + 1);
            return redis_sock_read_bulk_reply(redis_sock, *buf_len);

        case '*':

            if(memcmp(inbuf + 1, "-1", 2) == 0) {
                return ((void*)0);
            }


        case '+':
        case ':':


            if (len > 1) {
                *buf_len = len;
                return estrndup(inbuf, *buf_len);
            }
        default:
            zend_throw_exception_ex(redis_exception_ce, 0,
                "protocol error, got '%c' as reply type byte\n",
                inbuf[0]
            );
    }

    return ((void*)0);
}
