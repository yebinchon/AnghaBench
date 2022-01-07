
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {int right; } ;


 int single_rotate_with_left (int ) ;
 struct RavlNode* single_rotate_with_right (struct RavlNode*) ;

__attribute__((used)) static struct RavlNode *
double_rotate_with_right( struct RavlNode* k1 )
{

    k1->right = single_rotate_with_left(k1->right);


    return single_rotate_with_right(k1);
}
