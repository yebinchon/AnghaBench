
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int ** h_addr_list; } ;
struct TYPE_9__ {scalar_t__ len; int data; } ;
struct TYPE_11__ {char* err; TYPE_1__ host; } ;
typedef TYPE_3__ ngx_url_t ;
typedef size_t ngx_uint_t ;
struct TYPE_12__ {int log; } ;
typedef TYPE_4__ ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
typedef scalar_t__ in_addr_t ;


 int AF_INET ;
 scalar_t__ INADDR_NONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 struct hostent* gethostbyname (char*) ;
 int * ngx_alloc (scalar_t__,int ) ;
 int ngx_cpystrn (int *,int ,scalar_t__) ;
 int ngx_free (int *) ;
 scalar_t__ ngx_inet_add_addr (TYPE_4__*,TYPE_3__*,struct sockaddr*,int,int) ;
 scalar_t__ ngx_inet_addr (int ,scalar_t__) ;
 int ngx_memzero (struct sockaddr_in*,int) ;

ngx_int_t
ngx_inet_resolve_host(ngx_pool_t *pool, ngx_url_t *u)
{
    u_char *host;
    ngx_uint_t i, n;
    struct hostent *h;
    struct sockaddr_in sin;



    ngx_memzero(&sin, sizeof(struct sockaddr_in));

    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = ngx_inet_addr(u->host.data, u->host.len);

    if (sin.sin_addr.s_addr == INADDR_NONE) {
        host = ngx_alloc(u->host.len + 1, pool->log);
        if (host == ((void*)0)) {
            return NGX_ERROR;
        }

        (void) ngx_cpystrn(host, u->host.data, u->host.len + 1);

        h = gethostbyname((char *) host);

        ngx_free(host);

        if (h == ((void*)0) || h->h_addr_list[0] == ((void*)0)) {
            u->err = "host not found";
            return NGX_ERROR;
        }

        for (n = 0; h->h_addr_list[n] != ((void*)0); n++) { }



        for (i = 0; i < n; i++) {
            sin.sin_addr.s_addr = *(in_addr_t *) (h->h_addr_list[i]);

            if (ngx_inet_add_addr(pool, u, (struct sockaddr *) &sin,
                                  sizeof(struct sockaddr_in), n)
                != NGX_OK)
            {
                return NGX_ERROR;
            }
        }

    } else {



        if (ngx_inet_add_addr(pool, u, (struct sockaddr *) &sin,
                              sizeof(struct sockaddr_in), 1)
            != NGX_OK)
        {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
