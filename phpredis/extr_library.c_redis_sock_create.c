
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long retry_interval; int persistent; int port; double timeout; double read_timeout; scalar_t__ reply_literal; scalar_t__ tcp_keepalive; scalar_t__ readonly; int scan; int * err; int * pipeline_cmd; int * current; int * head; int mode; scalar_t__ compression_level; int compression; int serializer; int * persistent_id; scalar_t__ dbNumber; scalar_t__ watching; int status; int * stream; void* host; } ;
typedef TYPE_1__ RedisSock ;


 int ATOMIC ;
 int REDIS_COMPRESSION_NONE ;
 int REDIS_SCAN_NORETRY ;
 int REDIS_SERIALIZER_NONE ;
 int REDIS_SOCK_STATUS_DISCONNECTED ;
 TYPE_1__* ecalloc (int,int) ;
 int strlen (char*) ;
 void* zend_string_init (char*,int,int ) ;

RedisSock*
redis_sock_create(char *host, int host_len, int port,
                  double timeout, double read_timeout,
                  int persistent, char *persistent_id,
                  long retry_interval)
{
    RedisSock *redis_sock;

    redis_sock = ecalloc(1, sizeof(RedisSock));
    redis_sock->host = zend_string_init(host, host_len, 0);
    redis_sock->stream = ((void*)0);
    redis_sock->status = REDIS_SOCK_STATUS_DISCONNECTED;
    redis_sock->watching = 0;
    redis_sock->dbNumber = 0;
    redis_sock->retry_interval = retry_interval * 1000;
    redis_sock->persistent = persistent;
    redis_sock->persistent_id = ((void*)0);

    if (persistent && persistent_id != ((void*)0)) {
        redis_sock->persistent_id = zend_string_init(persistent_id, strlen(persistent_id), 0);
    }

    redis_sock->port = port;
    redis_sock->timeout = timeout;
    redis_sock->read_timeout = read_timeout;

    redis_sock->serializer = REDIS_SERIALIZER_NONE;
    redis_sock->compression = REDIS_COMPRESSION_NONE;
    redis_sock->compression_level = 0;
    redis_sock->mode = ATOMIC;
    redis_sock->head = ((void*)0);
    redis_sock->current = ((void*)0);

    redis_sock->pipeline_cmd = ((void*)0);

    redis_sock->err = ((void*)0);

    redis_sock->scan = REDIS_SCAN_NORETRY;

    redis_sock->readonly = 0;
    redis_sock->tcp_keepalive = 0;
    redis_sock->reply_literal = 0;

    return redis_sock;
}
