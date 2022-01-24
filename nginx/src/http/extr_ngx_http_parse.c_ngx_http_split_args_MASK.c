#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 

void
FUNC1(ngx_http_request_t *r, ngx_str_t *uri, ngx_str_t *args)
{
    u_char  *p, *last;

    last = uri->data + uri->len;

    p = FUNC0(uri->data, last, '?');

    if (p) {
        uri->len = p - uri->data;
        p++;
        args->len = last - p;
        args->data = p;

    } else {
        args->len = 0;
    }
}