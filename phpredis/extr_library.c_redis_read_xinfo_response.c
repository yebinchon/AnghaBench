
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;
typedef int REDIS_REPLY_TYPE ;


 int FAILURE ;
 int SUCCESS ;



 int add_assoc_long_ex (int *,char*,int,long) ;
 int add_assoc_stringl_ex (int *,char*,int,char*,long) ;
 int add_assoc_zval_ex (int *,char*,int,int *) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;
 int efree (char*) ;
 scalar_t__ redis_read_reply_type (int *,int*,long*) ;
 char* redis_sock_read_bulk_reply (int *,long) ;
 int spprintf (char**,int ,char*,long) ;
 int zval_dtor (int *) ;

int
redis_read_xinfo_response(RedisSock *redis_sock, zval *z_ret, int elements)
{
    zval zv;
    int i, len;
    char *key = ((void*)0), *data;
    REDIS_REPLY_TYPE type;
    long li;

    for (i = 0; i < elements; ++i) {
        if (redis_read_reply_type(redis_sock, &type, &li) < 0) {
            goto failure;
        }
        switch (type) {
        case 130:
            if ((data = redis_sock_read_bulk_reply(redis_sock, li)) == ((void*)0)) {
                goto failure;
            } else if (key) {
                add_assoc_stringl_ex(z_ret, key, len, data, li);
                efree(data);
                efree(key);
                key = ((void*)0);
            } else {
                key = data;
                len = li;
            }
            break;
        case 129:
            if (key) {
                add_assoc_long_ex(z_ret, key, len, li);
                efree(key);
                key = ((void*)0);
            } else {
                len = spprintf(&key, 0, "%ld", li);
            }
            break;
        case 128:
            array_init(&zv);
            if (redis_read_xinfo_response(redis_sock, &zv, li) != SUCCESS) {
                zval_dtor(&zv);
                goto failure;
            }
            if (key) {
                add_assoc_zval_ex(z_ret, key, len, &zv);
                efree(key);
                key = ((void*)0);
            } else {
                add_next_index_zval(z_ret, &zv);
            }
            break;
        default:
            goto failure;
        }
    }

    return SUCCESS;

failure:
    if (key) efree(key);
    return FAILURE;
}
