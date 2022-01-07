
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBNode ;


 int RAnalRange ;
 int container_of (int *,int ,int ) ;
 int free (int ) ;
 int rb ;

__attribute__((used)) static void __anal_hint_range_tree_free(RBNode *node) {
 free (container_of (node, RAnalRange, rb));
}
