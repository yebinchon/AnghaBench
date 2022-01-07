
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_5__ {int stream; } ;
typedef TYPE_1__ RedisSock ;
typedef int REDIS_REPLY_TYPE ;


 int CLUSTER_SEND_PAYLOAD (TYPE_1__*,char*,int) ;
 int CLUSTER_VALIDATE_REPLY_TYPE (TYPE_1__*,int ) ;
 int php_stream_gets (int ,char*,int) ;

__attribute__((used)) static int cluster_send_direct(RedisSock *redis_sock, char *cmd, int cmd_len,
                               REDIS_REPLY_TYPE type)
{
    char buf[1024];


    if (!CLUSTER_SEND_PAYLOAD(redis_sock,cmd,cmd_len) ||
        !CLUSTER_VALIDATE_REPLY_TYPE(redis_sock, type) ||
        !php_stream_gets(redis_sock->stream, buf, sizeof(buf))) return -1;


    return 0;
}
