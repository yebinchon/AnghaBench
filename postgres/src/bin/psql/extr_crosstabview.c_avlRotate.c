
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__** children; } ;
typedef TYPE_1__ avl_node ;


 int avlUpdateHeight (TYPE_1__*) ;

__attribute__((used)) static avl_node *
avlRotate(avl_node **current, int dir)
{
 avl_node *before = *current;
 avl_node *after = (*current)->children[dir];

 *current = after;
 before->children[dir] = after->children[!dir];
 avlUpdateHeight(before);
 after->children[!dir] = before;

 return after;
}
