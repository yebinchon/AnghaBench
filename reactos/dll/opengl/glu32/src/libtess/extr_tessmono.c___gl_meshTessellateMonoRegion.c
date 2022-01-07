
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* anEdge; } ;
struct TYPE_9__ {struct TYPE_9__* Sym; struct TYPE_9__* Lnext; struct TYPE_9__* Lprev; int Org; int Dst; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef TYPE_2__ GLUface ;


 scalar_t__ EdgeGoesLeft (TYPE_1__*) ;
 scalar_t__ EdgeGoesRight (TYPE_1__*) ;
 scalar_t__ EdgeSign (int ,int ,int ) ;
 scalar_t__ VertLeq (int ,int ) ;
 TYPE_1__* __gl_meshConnect (TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;

int __gl_meshTessellateMonoRegion( GLUface *face )
{
  GLUhalfEdge *up, *lo;






  up = face->anEdge;
  assert( up->Lnext != up && up->Lnext->Lnext != up );

  for( ; VertLeq( up->Dst, up->Org ); up = up->Lprev )
    ;
  for( ; VertLeq( up->Org, up->Dst ); up = up->Lnext )
    ;
  lo = up->Lprev;

  while( up->Lnext != lo ) {
    if( VertLeq( up->Dst, lo->Org )) {




      while( lo->Lnext != up && (EdgeGoesLeft( lo->Lnext )
      || EdgeSign( lo->Org, lo->Dst, lo->Lnext->Dst ) <= 0 )) {
 GLUhalfEdge *tempHalfEdge= __gl_meshConnect( lo->Lnext, lo );
 if (tempHalfEdge == ((void*)0)) return 0;
 lo = tempHalfEdge->Sym;
      }
      lo = lo->Lprev;
    } else {

      while( lo->Lnext != up && (EdgeGoesRight( up->Lprev )
      || EdgeSign( up->Dst, up->Org, up->Lprev->Org ) >= 0 )) {
 GLUhalfEdge *tempHalfEdge= __gl_meshConnect( up, up->Lprev );
 if (tempHalfEdge == ((void*)0)) return 0;
 up = tempHalfEdge->Sym;
      }
      up = up->Lnext;
    }
  }




  assert( lo->Lnext != up );
  while( lo->Lnext->Lnext != up ) {
    GLUhalfEdge *tempHalfEdge= __gl_meshConnect( lo->Lnext, lo );
    if (tempHalfEdge == ((void*)0)) return 0;
    lo = tempHalfEdge->Sym;
  }

  return 1;
}
