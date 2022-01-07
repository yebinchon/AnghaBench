
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ height; TYPE_1__** children; } ;
typedef TYPE_2__ avl_node ;
struct TYPE_4__ {scalar_t__ height; } ;



__attribute__((used)) static void
avlUpdateHeight(avl_node *n)
{
 n->height = 1 + (n->children[0]->height > n->children[1]->height ?
      n->children[0]->height :
      n->children[1]->height);
}
