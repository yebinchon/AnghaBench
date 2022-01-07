
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ ngx_radix_tree_t ;
struct TYPE_7__ {uintptr_t value; struct TYPE_7__* left; struct TYPE_7__* right; struct TYPE_7__* parent; } ;
typedef TYPE_2__ ngx_radix_node_t ;
typedef int ngx_int_t ;


 int NGX_BUSY ;
 int NGX_ERROR ;
 int NGX_OK ;
 uintptr_t NGX_RADIX_NO_VALUE ;
 TYPE_2__* ngx_radix_alloc (TYPE_1__*) ;

ngx_int_t
ngx_radix32tree_insert(ngx_radix_tree_t *tree, uint32_t key, uint32_t mask,
    uintptr_t value)
{
    uint32_t bit;
    ngx_radix_node_t *node, *next;

    bit = 0x80000000;

    node = tree->root;
    next = tree->root;

    while (bit & mask) {
        if (key & bit) {
            next = node->right;

        } else {
            next = node->left;
        }

        if (next == ((void*)0)) {
            break;
        }

        bit >>= 1;
        node = next;
    }

    if (next) {
        if (node->value != NGX_RADIX_NO_VALUE) {
            return NGX_BUSY;
        }

        node->value = value;
        return NGX_OK;
    }

    while (bit & mask) {
        next = ngx_radix_alloc(tree);
        if (next == ((void*)0)) {
            return NGX_ERROR;
        }

        next->right = ((void*)0);
        next->left = ((void*)0);
        next->parent = node;
        next->value = NGX_RADIX_NO_VALUE;

        if (key & bit) {
            node->right = next;

        } else {
            node->left = next;
        }

        bit >>= 1;
        node = next;
    }

    node->value = value;

    return NGX_OK;
}
