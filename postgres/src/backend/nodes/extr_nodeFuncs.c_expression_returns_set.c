
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int expression_returns_set_walker (int *,int *) ;

bool
expression_returns_set(Node *clause)
{
 return expression_returns_set_walker(clause, ((void*)0));
}
