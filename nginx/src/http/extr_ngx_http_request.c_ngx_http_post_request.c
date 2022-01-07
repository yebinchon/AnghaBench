
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {TYPE_1__* main; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_2__* request; } ;
typedef TYPE_3__ ngx_http_posted_request_t ;
struct TYPE_7__ {TYPE_3__* posted_requests; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_3__* ngx_palloc (int ,int) ;

ngx_int_t
ngx_http_post_request(ngx_http_request_t *r, ngx_http_posted_request_t *pr)
{
    ngx_http_posted_request_t **p;

    if (pr == ((void*)0)) {
        pr = ngx_palloc(r->pool, sizeof(ngx_http_posted_request_t));
        if (pr == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    pr->request = r;
    pr->next = ((void*)0);

    for (p = &r->main->posted_requests; *p; p = &(*p)->next) { }

    *p = pr;

    return NGX_OK;
}
