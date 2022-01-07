
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_6__ {int * last; int * end; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
typedef TYPE_2__ ngx_pool_t ;
struct TYPE_8__ {int size; int nelts; int nalloc; void* elts; TYPE_2__* pool; } ;
typedef TYPE_3__ ngx_array_t ;


 int ngx_memcpy (void*,void*,int) ;
 void* ngx_palloc (TYPE_2__*,int) ;

void *
ngx_array_push_n(ngx_array_t *a, ngx_uint_t n)
{
    void *elt, *new;
    size_t size;
    ngx_uint_t nalloc;
    ngx_pool_t *p;

    size = n * a->size;

    if (a->nelts + n > a->nalloc) {



        p = a->pool;

        if ((u_char *) a->elts + a->size * a->nalloc == p->d.last
            && p->d.last + size <= p->d.end)
        {





            p->d.last += size;
            a->nalloc += n;

        } else {


            nalloc = 2 * ((n >= a->nalloc) ? n : a->nalloc);

            new = ngx_palloc(p, nalloc * a->size);
            if (new == ((void*)0)) {
                return ((void*)0);
            }

            ngx_memcpy(new, a->elts, a->nelts * a->size);
            a->elts = new;
            a->nalloc = nalloc;
        }
    }

    elt = (u_char *) a->elts + a->size * a->nelts;
    a->nelts += n;

    return elt;
}
