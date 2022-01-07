
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int THREADNODE ;


 int SUCCESS ;
 int array_init (int *) ;
 int build_thread_tree_helper (int *,int *,long*,char*) ;

__attribute__((used)) static int build_thread_tree(THREADNODE *top, zval **tree)
{
 long numNodes = 0;
 char buf[25];

 array_init(*tree);

 build_thread_tree_helper(top, *tree, &numNodes, buf);

 return SUCCESS;
}
