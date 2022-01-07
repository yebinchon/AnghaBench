
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {long num; struct TYPE_3__* branch; struct TYPE_3__* next; } ;
typedef TYPE_1__ THREADNODE ;


 int add_assoc_long (int *,char*,long) ;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static void build_thread_tree_helper(THREADNODE *cur, zval *tree, long *numNodes, char *buf)
{
 unsigned long thisNode = *numNodes;


 snprintf(buf, 25, "%ld.num", thisNode);

 add_assoc_long(tree, buf, cur->num);

 snprintf(buf, 25, "%ld.next", thisNode);
 if(cur->next) {
  (*numNodes)++;
  add_assoc_long(tree, buf, *numNodes);
  build_thread_tree_helper(cur->next, tree, numNodes, buf);
 } else {
  add_assoc_long(tree, buf, 0);
 }

 snprintf(buf, 25, "%ld.branch", thisNode);
 if(cur->branch) {
  (*numNodes)++;
  add_assoc_long(tree, buf, *numNodes);
  build_thread_tree_helper(cur->branch, tree, numNodes, buf);
 } else {
  add_assoc_long(tree, buf, 0);
 }
}
