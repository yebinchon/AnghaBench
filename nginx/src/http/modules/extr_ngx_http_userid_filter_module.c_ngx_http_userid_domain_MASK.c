#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_6__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char *
FUNC5(ngx_conf_t *cf, void *post, void *data)
{
    ngx_str_t  *domain = data;

    u_char  *p, *new;

    if (FUNC4(domain->data, "none") == 0) {
        FUNC3(domain, "");
        return NGX_CONF_OK;
    }

    new = FUNC2(cf->pool, sizeof("; domain=") - 1 + domain->len);
    if (new == NULL) {
        return NGX_CONF_ERROR;
    }

    p = FUNC0(new, "; domain=", sizeof("; domain=") - 1);
    FUNC1(p, domain->data, domain->len);

    domain->len += sizeof("; domain=") - 1;
    domain->data = new;

    return NGX_CONF_OK;
}