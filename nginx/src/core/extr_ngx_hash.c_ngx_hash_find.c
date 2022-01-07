
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_5__ {size_t size; TYPE_2__** buckets; } ;
typedef TYPE_1__ ngx_hash_t ;
struct TYPE_6__ {void* value; int len; scalar_t__* name; } ;
typedef TYPE_2__ ngx_hash_elt_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_ALERT ;
 scalar_t__ ngx_align_ptr (scalar_t__*,int) ;
 TYPE_4__* ngx_cycle ;
 int ngx_log_error (int ,int ,int ,char*,size_t,scalar_t__*) ;

void *
ngx_hash_find(ngx_hash_t *hash, ngx_uint_t key, u_char *name, size_t len)
{
    ngx_uint_t i;
    ngx_hash_elt_t *elt;





    elt = hash->buckets[key % hash->size];

    if (elt == ((void*)0)) {
        return ((void*)0);
    }

    while (elt->value) {
        if (len != (size_t) elt->len) {
            goto next;
        }

        for (i = 0; i < len; i++) {
            if (name[i] != elt->name[i]) {
                goto next;
            }
        }

        return elt->value;

    next:

        elt = (ngx_hash_elt_t *) ngx_align_ptr(&elt->name[0] + elt->len,
                                               sizeof(void *));
        continue;
    }

    return ((void*)0);
}
