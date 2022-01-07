
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Onext; TYPE_1__* Sym; } ;
struct TYPE_5__ {TYPE_2__* Lnext; } ;
typedef TYPE_2__ GLUhalfEdge ;



__attribute__((used)) static void Splice( GLUhalfEdge *a, GLUhalfEdge *b )
{
  GLUhalfEdge *aOnext = a->Onext;
  GLUhalfEdge *bOnext = b->Onext;

  aOnext->Sym->Lnext = b;
  bOnext->Sym->Lnext = a;
  a->Onext = bOnext;
  b->Onext = aOnext;
}
