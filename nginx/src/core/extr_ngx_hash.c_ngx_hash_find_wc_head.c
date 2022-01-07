
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_4__ {void* value; int hash; } ;
typedef TYPE_1__ ngx_hash_wildcard_t ;
struct TYPE_5__ {int log; } ;


 int NGX_LOG_ALERT ;
 TYPE_3__* ngx_cycle ;
 size_t ngx_hash (size_t,char) ;
 void* ngx_hash_find (int *,size_t,char*,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,void*,...) ;

void *
ngx_hash_find_wc_head(ngx_hash_wildcard_t *hwc, u_char *name, size_t len)
{
    void *value;
    ngx_uint_t i, n, key;





    n = len;

    while (n) {
        if (name[n - 1] == '.') {
            break;
        }

        n--;
    }

    key = 0;

    for (i = n; i < len; i++) {
        key = ngx_hash(key, name[i]);
    }





    value = ngx_hash_find(&hwc->hash, key, &name[n], len - n);





    if (value) {
        if ((uintptr_t) value & 2) {

            if (n == 0) {



                if ((uintptr_t) value & 1) {
                    return ((void*)0);
                }

                hwc = (ngx_hash_wildcard_t *)
                                          ((uintptr_t) value & (uintptr_t) ~3);
                return hwc->value;
            }

            hwc = (ngx_hash_wildcard_t *) ((uintptr_t) value & (uintptr_t) ~3);

            value = ngx_hash_find_wc_head(hwc, name, n - 1);

            if (value) {
                return value;
            }

            return hwc->value;
        }

        if ((uintptr_t) value & 1) {

            if (n == 0) {



                return ((void*)0);
            }

            return (void *) ((uintptr_t) value & (uintptr_t) ~3);
        }

        return value;
    }

    return hwc->value;
}
