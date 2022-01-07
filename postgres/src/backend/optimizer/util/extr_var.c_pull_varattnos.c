
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * varattnos; int varno; } ;
typedef TYPE_1__ pull_varattnos_context ;
typedef int Node ;
typedef int Index ;
typedef int Bitmapset ;


 int pull_varattnos_walker (int *,TYPE_1__*) ;

void
pull_varattnos(Node *node, Index varno, Bitmapset **varattnos)
{
 pull_varattnos_context context;

 context.varattnos = *varattnos;
 context.varno = varno;

 (void) pull_varattnos_walker(node, &context);

 *varattnos = context.varattnos;
}
