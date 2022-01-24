#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {TYPE_1__ value; } ;
typedef  TYPE_2__ ngx_table_elt_t ;
struct TYPE_10__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_http_request_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r, ngx_table_elt_t *h, size_t prefix,
    size_t len, ngx_str_t *replacement)
{
    u_char  *p, *data;
    size_t   new_len;

    new_len = replacement->len + h->value.len - len;

    if (replacement->len > len) {

        data = FUNC3(r->pool, new_len + 1);
        if (data == NULL) {
            return NGX_ERROR;
        }

        p = FUNC0(data, h->value.data, prefix);
        p = FUNC0(p, replacement->data, replacement->len);

        FUNC1(p, h->value.data + prefix + len,
                   h->value.len - len - prefix + 1);

        h->value.data = data;

    } else {
        p = FUNC0(h->value.data + prefix, replacement->data,
                     replacement->len);

        FUNC2(p, h->value.data + prefix + len,
                    h->value.len - len - prefix + 1);
    }

    h->value.len = new_len;

    return NGX_OK;
}