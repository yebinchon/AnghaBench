
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int FigureColnameInternal (int *,char**) ;

char *
FigureColname(Node *node)
{
 char *name = ((void*)0);

 (void) FigureColnameInternal(node, &name);
 if (name != ((void*)0))
  return name;

 return "?column?";
}
