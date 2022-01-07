
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int* normal; int* sUnit; int* tUnit; TYPE_1__* mesh; } ;
struct TYPE_8__ {int* coords; void* t; void* s; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__ vHead; } ;
typedef int GLdouble ;
typedef TYPE_2__ GLUvertex ;
typedef TYPE_3__ GLUtesselator ;


 int CheckOrientation (TYPE_3__*) ;
 int ComputeNormal (TYPE_3__*,int*) ;
 void* Dot (int*,int*) ;
 int FALSE ;
 int LongAxis (int*) ;
 int Normalize (int*) ;
 int S_UNIT_X ;
 int S_UNIT_Y ;
 int TRUE ;
 int w ;

void __gl_projectPolygon( GLUtesselator *tess )
{
  GLUvertex *v, *vHead = &tess->mesh->vHead;
  GLdouble norm[3];
  GLdouble *sUnit, *tUnit;
  int i, computedNormal = FALSE;

  norm[0] = tess->normal[0];
  norm[1] = tess->normal[1];
  norm[2] = tess->normal[2];
  if( norm[0] == 0 && norm[1] == 0 && norm[2] == 0 ) {
    ComputeNormal( tess, norm );
    computedNormal = TRUE;
  }
  sUnit = tess->sUnit;
  tUnit = tess->tUnit;
  i = LongAxis( norm );
  sUnit[i] = 0;
  sUnit[(i+1)%3] = S_UNIT_X;
  sUnit[(i+2)%3] = S_UNIT_Y;

  tUnit[i] = 0;
  tUnit[(i+1)%3] = (norm[i] > 0) ? -S_UNIT_Y : S_UNIT_Y;
  tUnit[(i+2)%3] = (norm[i] > 0) ? S_UNIT_X : -S_UNIT_X;



  for( v = vHead->next; v != vHead; v = v->next ) {
    v->s = Dot( v->coords, sUnit );
    v->t = Dot( v->coords, tUnit );
  }
  if( computedNormal ) {
    CheckOrientation( tess );
  }
}
