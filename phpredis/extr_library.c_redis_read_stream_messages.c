
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int SCORE_DECODE_NONE ;
 int UNSERIALIZE_VALS ;
 int add_assoc_zval_ex (int *,char*,int,int *) ;
 int array_init (int *) ;
 int array_zip_values_and_scores (int *,int *,int ) ;
 int efree (char*) ;
 scalar_t__ read_mbulk_header (int *,int*) ;
 int redis_mbulk_reply_loop (int *,int *,int,int ) ;
 char* redis_sock_read (int *,int*) ;

int
redis_read_stream_messages(RedisSock *redis_sock, int count, zval *z_ret
                          )
{
    zval z_message;
    int i, mhdr, fields;
    char *id = ((void*)0);
    int idlen;


    for (i = 0; i < count; i++) {


        if ((read_mbulk_header(redis_sock, &mhdr) < 0 || mhdr != 2) ||
            ((id = redis_sock_read(redis_sock, &idlen)) == ((void*)0)) ||
            (read_mbulk_header(redis_sock, &fields) < 0 || fields % 2 != 0))
        {
            if (id) efree(id);
            return -1;
        }

        array_init(&z_message);

        redis_mbulk_reply_loop(redis_sock, &z_message, fields, UNSERIALIZE_VALS);
        array_zip_values_and_scores(redis_sock, &z_message, SCORE_DECODE_NONE);
        add_assoc_zval_ex(z_ret, id, idlen, &z_message);
        efree(id);
    }

    return 0;
}
