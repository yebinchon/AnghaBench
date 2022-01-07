
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Index ;


 int Assert (int ) ;
 int IsA (int *,int ) ;
 int Query ;
 int contain_outer_selfref_walker (int *,int *) ;

__attribute__((used)) static bool
contain_outer_selfref(Node *node)
{
 Index depth = 0;





 Assert(IsA(node, Query));

 return contain_outer_selfref_walker(node, &depth);
}
