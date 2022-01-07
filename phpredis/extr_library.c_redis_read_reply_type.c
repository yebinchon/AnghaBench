
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int inbuf ;
struct TYPE_4__ {int stream; } ;
typedef TYPE_1__ RedisSock ;
typedef scalar_t__ REDIS_REPLY_TYPE ;


 scalar_t__ EOF ;
 int REDIS_THROW_EXCEPTION (char*,int ) ;
 scalar_t__ TYPE_BULK ;
 scalar_t__ TYPE_INT ;
 scalar_t__ TYPE_MULTIBULK ;
 long atol (char*) ;
 scalar_t__ php_stream_getc (int ) ;
 int * php_stream_gets (int ,char*,int) ;
 int redis_check_eof (TYPE_1__*,int ) ;

int
redis_read_reply_type(RedisSock *redis_sock, REDIS_REPLY_TYPE *reply_type,
                      long *reply_info)
{

    if(-1 == redis_check_eof(redis_sock, 0)) {

        *reply_type = EOF;
        return -1;
    }


    if((*reply_type = php_stream_getc(redis_sock->stream)) == EOF) {
        REDIS_THROW_EXCEPTION( "socket error on read socket", 0);
        return -1;
    }



    if(*reply_type == TYPE_INT || *reply_type == TYPE_BULK ||
       *reply_type == TYPE_MULTIBULK)
    {

        char inbuf[255];


        if (php_stream_gets(redis_sock->stream, inbuf, sizeof(inbuf)) == ((void*)0)) {
            return -1;
        }


        *reply_info = atol(inbuf);
    }


    return 0;
}
