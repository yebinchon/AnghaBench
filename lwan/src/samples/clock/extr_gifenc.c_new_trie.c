
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** children; } ;
typedef TYPE_1__ Node ;


 void* new_node (int,int) ;

__attribute__((used)) static Node *new_trie(int degree, int *nkeys)
{
    Node *root = new_node(0, degree);

    for (*nkeys = 0; *nkeys < degree; (*nkeys)++)
        root->children[*nkeys] = new_node(*nkeys, degree);
    *nkeys += 2;
    return root;
}
