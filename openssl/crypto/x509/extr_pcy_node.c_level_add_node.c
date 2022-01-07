
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int * extra_data; } ;
typedef TYPE_1__ X509_POLICY_TREE ;
struct TYPE_15__ {int nchild; struct TYPE_15__* parent; TYPE_4__* data; } ;
typedef TYPE_2__ X509_POLICY_NODE ;
struct TYPE_16__ {int * nodes; TYPE_2__* anyPolicy; } ;
typedef TYPE_3__ X509_POLICY_LEVEL ;
struct TYPE_17__ {int valid_policy; } ;
typedef TYPE_4__ X509_POLICY_DATA ;


 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ NID_any_policy ;
 scalar_t__ OBJ_obj2nid (int ) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int X509V3_F_LEVEL_ADD_NODE ;
 int X509V3err (int ,int ) ;
 int * policy_node_cmp_new () ;
 int policy_node_free (TYPE_2__*) ;
 int * sk_X509_POLICY_DATA_new_null () ;
 int sk_X509_POLICY_DATA_push (int *,TYPE_4__*) ;
 int sk_X509_POLICY_NODE_push (int *,TYPE_2__*) ;

X509_POLICY_NODE *level_add_node(X509_POLICY_LEVEL *level,
                                 X509_POLICY_DATA *data,
                                 X509_POLICY_NODE *parent,
                                 X509_POLICY_TREE *tree)
{
    X509_POLICY_NODE *node;

    node = OPENSSL_zalloc(sizeof(*node));
    if (node == ((void*)0)) {
        X509V3err(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    node->data = data;
    node->parent = parent;
    if (level) {
        if (OBJ_obj2nid(data->valid_policy) == NID_any_policy) {
            if (level->anyPolicy)
                goto node_error;
            level->anyPolicy = node;
        } else {

            if (level->nodes == ((void*)0))
                level->nodes = policy_node_cmp_new();
            if (level->nodes == ((void*)0)) {
                X509V3err(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
                goto node_error;
            }
            if (!sk_X509_POLICY_NODE_push(level->nodes, node)) {
                X509V3err(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
                goto node_error;
            }
        }
    }

    if (tree) {
        if (tree->extra_data == ((void*)0))
            tree->extra_data = sk_X509_POLICY_DATA_new_null();
        if (tree->extra_data == ((void*)0)){
            X509V3err(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
            goto node_error;
        }
        if (!sk_X509_POLICY_DATA_push(tree->extra_data, data)) {
            X509V3err(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
            goto node_error;
        }
    }

    if (parent)
        parent->nchild++;

    return node;

 node_error:
    policy_node_free(node);
    return ((void*)0);
}
