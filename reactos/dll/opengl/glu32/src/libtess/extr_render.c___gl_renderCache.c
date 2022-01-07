
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
struct TYPE_5__ {int cacheCount; scalar_t__* normal; int windingRule; scalar_t__ boundaryOnly; TYPE_2__* cache; } ;
typedef scalar_t__ GLdouble ;
typedef int GLboolean ;
typedef TYPE_1__ GLUtesselator ;
typedef TYPE_2__ CachedVertex ;


 int CALL_BEGIN_OR_BEGIN_DATA (int ) ;
 int CALL_END_OR_END_DATA () ;
 int CALL_VERTEX_OR_VERTEX_DATA (int ) ;
 int ComputeNormal (TYPE_1__*,scalar_t__*,int ) ;
 int FALSE ;





 int GL_LINE_LOOP ;
 int GL_TRIANGLES ;
 int GL_TRIANGLE_FAN ;
 int SIGN_INCONSISTENT ;
 int TRUE ;

GLboolean __gl_renderCache( GLUtesselator *tess )
{
  CachedVertex *v0 = tess->cache;
  CachedVertex *vn = v0 + tess->cacheCount;
  CachedVertex *vc;
  GLdouble norm[3];
  int sign;

  if( tess->cacheCount < 3 ) {

    return TRUE;
  }

  norm[0] = tess->normal[0];
  norm[1] = tess->normal[1];
  norm[2] = tess->normal[2];
  if( norm[0] == 0 && norm[1] == 0 && norm[2] == 0 ) {
    ComputeNormal( tess, norm, FALSE );
  }

  sign = ComputeNormal( tess, norm, TRUE );
  if( sign == SIGN_INCONSISTENT ) {

    return FALSE;
  }
  if( sign == 0 ) {

    return TRUE;
  }


  switch( tess->windingRule ) {
  case 129:
  case 130:
    break;
  case 128:
    if( sign < 0 ) return TRUE;
    break;
  case 131:
    if( sign > 0 ) return TRUE;
    break;
  case 132:
    return TRUE;
  }

  CALL_BEGIN_OR_BEGIN_DATA( tess->boundaryOnly ? GL_LINE_LOOP
     : (tess->cacheCount > 3) ? GL_TRIANGLE_FAN
     : GL_TRIANGLES );

  CALL_VERTEX_OR_VERTEX_DATA( v0->data );
  if( sign > 0 ) {
    for( vc = v0+1; vc < vn; ++vc ) {
      CALL_VERTEX_OR_VERTEX_DATA( vc->data );
    }
  } else {
    for( vc = vn-1; vc > v0; --vc ) {
      CALL_VERTEX_OR_VERTEX_DATA( vc->data );
    }
  }
  CALL_END_OR_END_DATA();
  return TRUE;
}
