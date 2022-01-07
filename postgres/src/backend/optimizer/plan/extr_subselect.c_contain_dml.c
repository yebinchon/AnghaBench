
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_dml_walker (int *,int *) ;

__attribute__((used)) static bool
contain_dml(Node *node)
{
 return contain_dml_walker(node, ((void*)0));
}
