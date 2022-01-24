#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_7__ {char* data; size_t len; } ;
struct TYPE_8__ {TYPE_1__ url; } ;
typedef  TYPE_2__ ngx_url_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

ngx_int_t
FUNC4(ngx_pool_t *pool, ngx_url_t *u)
{
    u_char  *p;
    size_t   len;

    p = u->url.data;
    len = u->url.len;

    if (len >= 5 && FUNC3(p, (u_char *) "unix:", 5) == 0) {
        return FUNC2(pool, u);
    }

    if (len && p[0] == '[') {
        return FUNC0(pool, u);
    }

    return FUNC1(pool, u);
}