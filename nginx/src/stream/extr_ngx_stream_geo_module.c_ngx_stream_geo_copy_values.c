
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {int * data; } ;
typedef TYPE_3__ ngx_stream_variable_value_t ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_9__ {TYPE_1__ str; } ;
struct TYPE_11__ {int offset; TYPE_2__ sn; TYPE_3__* value; } ;
typedef TYPE_4__ ngx_stream_geo_variable_value_node_t ;
struct TYPE_12__ {struct TYPE_12__* right; struct TYPE_12__* left; } ;
typedef TYPE_5__ ngx_rbtree_node_t ;


 int * ngx_align_ptr (int *,int) ;
 int * ngx_cpymem (int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_stream_geo_copy_values(u_char *base, u_char *p, ngx_rbtree_node_t *node,
    ngx_rbtree_node_t *sentinel)
{
    ngx_stream_variable_value_t *vv;
    ngx_stream_geo_variable_value_node_t *gvvn;

    if (node == sentinel) {
        return p;
    }

    gvvn = (ngx_stream_geo_variable_value_node_t *) node;
    gvvn->offset = p - base;

    vv = (ngx_stream_variable_value_t *) p;
    *vv = *gvvn->value;
    p += sizeof(ngx_stream_variable_value_t);
    vv->data = (u_char *) (p - base);

    p = ngx_cpymem(p, gvvn->sn.str.data, gvvn->sn.str.len);

    p = ngx_align_ptr(p, sizeof(void *));

    p = ngx_stream_geo_copy_values(base, p, node->left, sentinel);

    return ngx_stream_geo_copy_values(base, p, node->right, sentinel);
}
