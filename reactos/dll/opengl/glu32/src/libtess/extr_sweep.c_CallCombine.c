
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fatalError; } ;
struct TYPE_5__ {int * data; int * coords; } ;
typedef int GLfloat ;
typedef int GLdouble ;
typedef TYPE_1__ GLUvertex ;
typedef TYPE_2__ GLUtesselator ;


 int CALL_COMBINE_OR_COMBINE_DATA (int *,void**,int *,int **) ;
 int CALL_ERROR_OR_ERROR_DATA (int ) ;
 int GLU_TESS_NEED_COMBINE_CALLBACK ;
 scalar_t__ TRUE ;

__attribute__((used)) static void CallCombine( GLUtesselator *tess, GLUvertex *isect,
    void *data[4], GLfloat weights[4], int needed )
{
  GLdouble coords[3];


  coords[0] = isect->coords[0];
  coords[1] = isect->coords[1];
  coords[2] = isect->coords[2];

  isect->data = ((void*)0);
  CALL_COMBINE_OR_COMBINE_DATA( coords, data, weights, &isect->data );
  if( isect->data == ((void*)0) ) {
    if( ! needed ) {
      isect->data = data[0];
    } else if( ! tess->fatalError ) {




      CALL_ERROR_OR_ERROR_DATA( GLU_TESS_NEED_COMBINE_CALLBACK );
      tess->fatalError = TRUE;
    }
  }
}
