
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int list_make2 (int *,int *) ;
 scalar_t__ make_andclause (int ) ;

Node *
make_and_qual(Node *qual1, Node *qual2)
{
 if (qual1 == ((void*)0))
  return qual2;
 if (qual2 == ((void*)0))
  return qual1;
 return (Node *) make_andclause(list_make2(qual1, qual2));
}
