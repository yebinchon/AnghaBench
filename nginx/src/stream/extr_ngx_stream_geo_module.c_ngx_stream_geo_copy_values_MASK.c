#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_10__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_stream_variable_value_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__ str; } ;
struct TYPE_11__ {int offset; TYPE_2__ sn; TYPE_3__* value; } ;
typedef  TYPE_4__ ngx_stream_geo_variable_value_node_t ;
struct TYPE_12__ {struct TYPE_12__* right; struct TYPE_12__* left; } ;
typedef  TYPE_5__ ngx_rbtree_node_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_char *
FUNC2(u_char *base, u_char *p, ngx_rbtree_node_t *node,
    ngx_rbtree_node_t *sentinel)
{
    ngx_stream_variable_value_t           *vv;
    ngx_stream_geo_variable_value_node_t  *gvvn;

    if (node == sentinel) {
        return p;
    }

    gvvn = (ngx_stream_geo_variable_value_node_t *) node;
    gvvn->offset = p - base;

    vv = (ngx_stream_variable_value_t *) p;
    *vv = *gvvn->value;
    p += sizeof(ngx_stream_variable_value_t);
    vv->data = (u_char *) (p - base);

    p = FUNC1(p, gvvn->sn.str.data, gvvn->sn.str.len);

    p = FUNC0(p, sizeof(void *));

    p = FUNC2(base, p, node->left, sentinel);

    return FUNC2(base, p, node->right, sentinel);
}