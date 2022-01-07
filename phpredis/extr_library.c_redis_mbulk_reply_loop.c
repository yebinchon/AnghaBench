
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int UNSERIALIZE_ALL ;
 int UNSERIALIZE_KEYS ;
 int UNSERIALIZE_VALS ;
 int add_next_index_bool (int *,int ) ;
 int add_next_index_stringl (int *,char*,int) ;
 int add_next_index_zval (int *,int *) ;
 int efree (char*) ;
 char* redis_sock_read (int *,int*) ;
 scalar_t__ redis_unpack (int *,char*,int,int *) ;

void
redis_mbulk_reply_loop(RedisSock *redis_sock, zval *z_tab, int count,
                       int unserialize)
{
    zval z_unpacked;
    char *line;
    int i, len;

    for (i = 0; i < count; ++i) {
        if ((line = redis_sock_read(redis_sock, &len)) == ((void*)0)) {
            add_next_index_bool(z_tab, 0);
            continue;
        }




        int unwrap = (
            (unserialize == UNSERIALIZE_ALL) ||
            (unserialize == UNSERIALIZE_KEYS && i % 2 == 0) ||
            (unserialize == UNSERIALIZE_VALS && i % 2 != 0)
        );

        if (unwrap && redis_unpack(redis_sock, line, len, &z_unpacked)) {
            add_next_index_zval(z_tab, &z_unpacked);
        } else {
            add_next_index_stringl(z_tab, line, len);
        }
        efree(line);
    }
}
