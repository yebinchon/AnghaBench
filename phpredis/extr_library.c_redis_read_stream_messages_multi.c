
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int add_assoc_zval_ex (int *,char*,int,int *) ;
 int array_init (int *) ;
 int efree (char*) ;
 scalar_t__ read_mbulk_header (int *,int*) ;
 scalar_t__ redis_read_stream_messages (int *,int,int *) ;
 char* redis_sock_read (int *,int*) ;
 int zval_dtor (int *) ;

int
redis_read_stream_messages_multi(RedisSock *redis_sock, int count, zval *z_streams
                                )
{
    zval z_messages;
    int i, shdr, messages;
    char *id = ((void*)0);
    int idlen;

    for (i = 0; i < count; i++) {
        if ((read_mbulk_header(redis_sock, &shdr) < 0 || shdr != 2) ||
            (id = redis_sock_read(redis_sock, &idlen)) == ((void*)0) ||
            read_mbulk_header(redis_sock, &messages) < 0)
        {
            if (id) efree(id);
            return -1;
        }

        array_init(&z_messages);

        if (redis_read_stream_messages(redis_sock, messages, &z_messages) < 0)
            goto failure;

        add_assoc_zval_ex(z_streams, id, idlen, &z_messages);
        efree(id);
    }

    return 0;
failure:
    efree(id);
    zval_dtor(&z_messages);
    return -1;
}
