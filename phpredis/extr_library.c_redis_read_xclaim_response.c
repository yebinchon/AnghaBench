
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;
typedef scalar_t__ REDIS_REPLY_TYPE ;


 int SCORE_DECODE_NONE ;
 scalar_t__ TYPE_BULK ;
 scalar_t__ TYPE_MULTIBULK ;
 int UNSERIALIZE_VALS ;
 int add_assoc_zval_ex (int *,char*,int,int *) ;
 int add_next_index_stringl (int *,char*,long) ;
 int array_init (int *) ;
 int array_zip_values_and_scores (int *,int *,int ) ;
 int efree (char*) ;
 scalar_t__ read_mbulk_header (int *,int*) ;
 int redis_mbulk_reply_loop (int *,int *,int,int ) ;
 scalar_t__ redis_read_reply_type (int *,scalar_t__*,long*) ;
 char* redis_sock_read (int *,int*) ;
 char* redis_sock_read_bulk_reply (int *,size_t) ;

int
redis_read_xclaim_response(RedisSock *redis_sock, int count, zval *rv) {
    zval z_msg;
    REDIS_REPLY_TYPE type;
    char *id = ((void*)0);
    int i, fields, idlen;
    long li;

    for (i = 0; i < count; i++) {

        if (redis_read_reply_type(redis_sock, &type, &li) < 0 ||
            (type != TYPE_BULK && type != TYPE_MULTIBULK) ||
            (type == TYPE_BULK && li <= 0)) return -1;


        if (type == TYPE_BULK) {
            if ((id = redis_sock_read_bulk_reply(redis_sock, (size_t)li)) == ((void*)0))
                return -1;

            add_next_index_stringl(rv, id, li);
            efree(id);
        } else {
            if ((li != 2 || (id = redis_sock_read(redis_sock, &idlen)) == ((void*)0)) ||
                (read_mbulk_header(redis_sock, &fields) < 0 || fields % 2 != 0))
            {
                if (id) efree(id);
                return -1;
            }

            array_init(&z_msg);

            redis_mbulk_reply_loop(redis_sock, &z_msg, fields, UNSERIALIZE_VALS);
            array_zip_values_and_scores(redis_sock, &z_msg, SCORE_DECODE_NONE);
            add_assoc_zval_ex(rv, id, idlen, &z_msg);
            efree(id);
        }
    }

    return 0;
}
