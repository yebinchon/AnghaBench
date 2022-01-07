
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; size_t integer; size_t len; size_t elements; void* element; int str; } ;
typedef TYPE_1__ clusterReply ;
typedef int RedisSock ;
typedef int REDIS_REPLY_TYPE ;







 int cluster_free_reply (TYPE_1__*,int) ;
 int cluster_multibulk_resp_recursive (int *,size_t,void*,int ,int*) ;
 void* ecalloc (size_t,int) ;
 int estrndup (char*,size_t) ;
 int redis_sock_read_bulk_reply (int *,size_t) ;

clusterReply*
cluster_read_sock_resp(RedisSock *redis_sock, REDIS_REPLY_TYPE type,
                       char *line_reply, size_t len)
{
    clusterReply *r;

    r = ecalloc(1, sizeof(clusterReply));
    r->type = type;


    int err = 0;

    switch(r->type) {
        case 130:
            r->integer = len;
            break;
        case 129:
            if (line_reply) {
                r->str = estrndup(line_reply, len);
                r->len = len;
            }
        case 131:
            return r;
        case 132:
            r->len = len;
            r->str = redis_sock_read_bulk_reply(redis_sock, len);
            if (r->len != -1 && !r->str) {
                cluster_free_reply(r, 1);
                return ((void*)0);
            }
            break;
        case 128:
            r->elements = len;
            if (len != (size_t)-1) {
                r->element = ecalloc(len, sizeof(clusterReply*));
                cluster_multibulk_resp_recursive(redis_sock, len, r->element,
                                                 line_reply != ((void*)0), &err);
            }
            break;
        default:
            cluster_free_reply(r,1);
            return ((void*)0);
    }


    if (err) {
        cluster_free_reply(r,1);
        return ((void*)0);
    }


    return r;
}
