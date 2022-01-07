
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; long len; long integer; size_t elements; struct TYPE_3__** element; int str; } ;
typedef TYPE_1__ clusterReply ;
typedef int buf ;
typedef int RedisSock ;







 void* ecalloc (int,int) ;
 int estrndup (char*,long long) ;
 scalar_t__ redis_read_reply_type (int *,int*,long*) ;
 int redis_sock_gets (int *,char*,int,size_t*) ;
 int redis_sock_read_bulk_reply (int *,long long) ;

__attribute__((used)) static void
cluster_multibulk_resp_recursive(RedisSock *sock, size_t elements,
                                 clusterReply **element, int status_strings,
                                 int *err)
{
    int i;
    size_t sz;
    clusterReply *r;
    long len;
    char buf[1024];

    for (i = 0; i < elements; i++) {
        r = element[i] = ecalloc(1, sizeof(clusterReply));


        if (redis_read_reply_type(sock, &r->type, &len) < 0) {
            *err = 1;
            return;
        }


        r->len = len;

        switch(r->type) {
            case 131:
            case 129:
                if (redis_sock_gets(sock,buf,sizeof(buf),&sz) < 0) {
                    *err = 1;
                    return;
                }
                r->len = (long long)sz;
                if (status_strings) r->str = estrndup(buf, r->len);
                break;
            case 130:
                r->integer = len;
                break;
            case 132:
                if (r->len >= 0) {
                    r->str = redis_sock_read_bulk_reply(sock,r->len);
                    if (!r->str) {
                        *err = 1;
                        return;
                    }
                }
                break;
            case 128:
                if (r->len >= 0) {
                    r->elements = r->len;
                    if (r->len > 0) {
                        r->element = ecalloc(r->len,sizeof(clusterReply*));
                        cluster_multibulk_resp_recursive(sock, r->elements, r->element,
                            status_strings, err);
                    }
                    if (*err) return;
                }
                break;
            default:
                *err = 1;
                return;
        }
    }
}
