
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {int left; } ;


 struct RavlNode* single_rotate_with_left (struct RavlNode*) ;
 int single_rotate_with_right (int ) ;

__attribute__((used)) static struct RavlNode *
double_rotate_with_left(struct RavlNode* k3)
{

    k3->left = single_rotate_with_right(k3->left);


    return single_rotate_with_left(k3);
}
