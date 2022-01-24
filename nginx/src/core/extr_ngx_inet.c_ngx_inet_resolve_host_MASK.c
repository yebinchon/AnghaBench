#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_10__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/ ** h_addr_list; } ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {char* err; TYPE_1__ host; } ;
typedef  TYPE_3__ ngx_url_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_4__ ngx_pool_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  scalar_t__ in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INADDR_NONE ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 struct hostent* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_3__*,struct sockaddr*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int) ; 

ngx_int_t
FUNC7(ngx_pool_t *pool, ngx_url_t *u)
{
    u_char              *host;
    ngx_uint_t           i, n;
    struct hostent      *h;
    struct sockaddr_in   sin;

    /* AF_INET only */

    FUNC6(&sin, sizeof(struct sockaddr_in));

    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = FUNC5(u->host.data, u->host.len);

    if (sin.sin_addr.s_addr == INADDR_NONE) {
        host = FUNC1(u->host.len + 1, pool->log);
        if (host == NULL) {
            return NGX_ERROR;
        }

        (void) FUNC2(host, u->host.data, u->host.len + 1);

        h = FUNC0((char *) host);

        FUNC3(host);

        if (h == NULL || h->h_addr_list[0] == NULL) {
            u->err = "host not found";
            return NGX_ERROR;
        }

        for (n = 0; h->h_addr_list[n] != NULL; n++) { /* void */ }

        /* MP: ngx_shared_palloc() */

        for (i = 0; i < n; i++) {
            sin.sin_addr.s_addr = *(in_addr_t *) (h->h_addr_list[i]);

            if (FUNC4(pool, u, (struct sockaddr *) &sin,
                                  sizeof(struct sockaddr_in), n)
                != NGX_OK)
            {
                return NGX_ERROR;
            }
        }

    } else {

        /* MP: ngx_shared_palloc() */

        if (FUNC4(pool, u, (struct sockaddr *) &sin,
                              sizeof(struct sockaddr_in), 1)
            != NGX_OK)
        {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}