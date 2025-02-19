
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int nlevel; TYPE_4__* levels; } ;
typedef TYPE_2__ X509_POLICY_TREE ;
struct TYPE_13__ {TYPE_1__* data; } ;
typedef TYPE_3__ X509_POLICY_NODE ;
struct TYPE_14__ {TYPE_3__* anyPolicy; int nodes; int flags; } ;
typedef TYPE_4__ X509_POLICY_LEVEL ;
struct TYPE_11__ {long flags; } ;
typedef int BIO ;


 int BIO_printf (int *,char*,...) ;
 int X509_POLICY_NODE_print (int *,TYPE_3__*,int) ;
 int expected_print (int *,TYPE_4__*,TYPE_3__*,int) ;
 int sk_X509_POLICY_NODE_num (int ) ;
 TYPE_3__* sk_X509_POLICY_NODE_value (int ,int) ;

__attribute__((used)) static void tree_print(BIO *channel,
                       char *str, X509_POLICY_TREE *tree,
                       X509_POLICY_LEVEL *curr)
{
    X509_POLICY_LEVEL *plev;

    if (!curr)
        curr = tree->levels + tree->nlevel;
    else
        curr++;

    BIO_printf(channel, "Level print after %s\n", str);
    BIO_printf(channel, "Printing Up to Level %ld\n",
               (long)(curr - tree->levels));
    for (plev = tree->levels; plev != curr; plev++) {
        int i;

        BIO_printf(channel, "Level %ld, flags = %x\n",
                   (long)(plev - tree->levels), plev->flags);
        for (i = 0; i < sk_X509_POLICY_NODE_num(plev->nodes); i++) {
            X509_POLICY_NODE *node =
                sk_X509_POLICY_NODE_value(plev->nodes, i);

            X509_POLICY_NODE_print(channel, node, 2);
            expected_print(channel, plev, node, 2);
            BIO_printf(channel, "  Flags: %x\n", node->data->flags);
        }
        if (plev->anyPolicy)
            X509_POLICY_NODE_print(channel, plev->anyPolicy, 2);
    }
}
