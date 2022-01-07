
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** children; } ;
typedef TYPE_2__ avl_node ;
struct TYPE_4__ {int height; } ;



__attribute__((used)) static int
avlBalance(avl_node *n)
{
 return n->children[0]->height - n->children[1]->height;
}
