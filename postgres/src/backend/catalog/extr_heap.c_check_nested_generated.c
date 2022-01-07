
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Node ;


 int check_nested_generated_walker (int *,int *) ;

__attribute__((used)) static void
check_nested_generated(ParseState *pstate, Node *node)
{
 check_nested_generated_walker(node, pstate);
}
