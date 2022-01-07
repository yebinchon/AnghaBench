
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; } ;
typedef TYPE_1__ RedisSock ;


 int REDIS_THROW_EXCEPTION (char*,int ) ;
 int efree (char*) ;
 char* emalloc (int) ;
 scalar_t__ php_stream_eof (int ) ;
 size_t php_stream_read (int ,char*,int) ;
 int redis_check_eof (TYPE_1__*,int ) ;

char *
redis_sock_read_bulk_reply(RedisSock *redis_sock, int bytes)
{
    int offset = 0, nbytes;
    char *reply;
    size_t got;

    if (-1 == bytes || -1 == redis_check_eof(redis_sock, 0)) {
        return ((void*)0);
    }

    nbytes = bytes + 2;

    reply = emalloc(nbytes);


    while (offset < nbytes) {
        got = php_stream_read(redis_sock->stream, reply + offset, nbytes - offset);
        if (got == 0 && php_stream_eof(redis_sock->stream)) break;
        offset += got;
    }


    if (offset < nbytes) {

        REDIS_THROW_EXCEPTION("socket error on read socket", 0);
        efree(reply);
        return ((void*)0);
    }


    reply[bytes] = '\0';

    return reply;
}
