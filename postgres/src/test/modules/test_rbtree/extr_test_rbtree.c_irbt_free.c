
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBTNode ;


 int pfree (int *) ;

__attribute__((used)) static void
irbt_free(RBTNode *node, void *arg)
{
 pfree(node);
}
