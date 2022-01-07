
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ port; int host; int stream; } ;
typedef TYPE_1__ RedisSock ;


 int REDIS_THROW_EXCEPTION (char*,int ) ;
 int ZSTR_VAL (int ) ;
 int efree (char*) ;
 int * php_stream_get_line (int ,char*,int,size_t*) ;
 int redis_check_eof (TYPE_1__*,int ) ;
 int redis_sock_disconnect (TYPE_1__*,int) ;
 int spprintf (char**,int ,char*,int ,...) ;

int
redis_sock_gets(RedisSock *redis_sock, char *buf, int buf_size,
                size_t *line_size)
{

    if(-1 == redis_check_eof(redis_sock, 0)) {
        return -1;
    }

    if(php_stream_get_line(redis_sock->stream, buf, buf_size, line_size)
                           == ((void*)0))
    {
        char *errmsg = ((void*)0);

        if (redis_sock->port < 0) {
            spprintf(&errmsg, 0, "read error on connection to %s", ZSTR_VAL(redis_sock->host));
        } else {
            spprintf(&errmsg, 0, "read error on connection to %s:%d", ZSTR_VAL(redis_sock->host), redis_sock->port);
        }

        redis_sock_disconnect(redis_sock, 1);


        REDIS_THROW_EXCEPTION(errmsg, 0);
        efree(errmsg);
        return -1;
    }


    *line_size-=2;
    buf[*line_size]='\0';


    return 0;
}
