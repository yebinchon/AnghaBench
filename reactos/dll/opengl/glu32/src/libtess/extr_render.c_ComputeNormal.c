
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {double* coords; } ;
struct TYPE_4__ {int cacheCount; TYPE_2__* cache; } ;
typedef double GLdouble ;
typedef TYPE_1__ GLUtesselator ;
typedef TYPE_2__ CachedVertex ;


 int SIGN_INCONSISTENT ;

__attribute__((used)) static int ComputeNormal( GLUtesselator *tess, GLdouble norm[3], int check )
{
  CachedVertex *v0 = tess->cache;
  CachedVertex *vn = v0 + tess->cacheCount;
  CachedVertex *vc;
  GLdouble dot, xc, yc, zc, xp, yp, zp, n[3];
  int sign = 0;
  if( ! check ) {
    norm[0] = norm[1] = norm[2] = 0.0;
  }

  vc = v0 + 1;
  xc = vc->coords[0] - v0->coords[0];
  yc = vc->coords[1] - v0->coords[1];
  zc = vc->coords[2] - v0->coords[2];
  while( ++vc < vn ) {
    xp = xc; yp = yc; zp = zc;
    xc = vc->coords[0] - v0->coords[0];
    yc = vc->coords[1] - v0->coords[1];
    zc = vc->coords[2] - v0->coords[2];


    n[0] = yp*zc - zp*yc;
    n[1] = zp*xc - xp*zc;
    n[2] = xp*yc - yp*xc;

    dot = n[0]*norm[0] + n[1]*norm[1] + n[2]*norm[2];
    if( ! check ) {



      if( dot >= 0 ) {
 norm[0] += n[0]; norm[1] += n[1]; norm[2] += n[2];
      } else {
 norm[0] -= n[0]; norm[1] -= n[1]; norm[2] -= n[2];
      }
    } else if( dot != 0 ) {

      if( dot > 0 ) {
 if( sign < 0 ) return SIGN_INCONSISTENT;
 sign = 1;
      } else {
 if( sign > 0 ) return SIGN_INCONSISTENT;
 sign = -1;
      }
    }
  }
  return sign;
}
