
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float OffsetFactor; float OffsetUnits; scalar_t__ OffsetFill; scalar_t__ OffsetLine; scalar_t__ OffsetPoint; } ;
struct TYPE_5__ {float PointZoffset; float LineZoffset; float PolygonZoffset; TYPE_1__ Polygon; } ;
typedef float GLfloat ;
typedef TYPE_2__ GLcontext ;


 float MAX2 (float,float) ;

__attribute__((used)) static void offset_polygon( GLcontext *ctx, GLfloat a, GLfloat b, GLfloat c )
{
   GLfloat ac, bc, m;
   GLfloat offset;

   if (c<0.001F && c>-0.001F) {

      offset = 0.0F;
   }
   else {
      ac = a / c;
      bc = b / c;
      if (ac<0.0F) ac = -ac;
      if (bc<0.0F) bc = -bc;
      m = MAX2( ac, bc );


      offset = m * ctx->Polygon.OffsetFactor + ctx->Polygon.OffsetUnits;
   }

   ctx->PointZoffset = ctx->Polygon.OffsetPoint ? offset : 0.0F;
   ctx->LineZoffset = ctx->Polygon.OffsetLine ? offset : 0.0F;
   ctx->PolygonZoffset = ctx->Polygon.OffsetFill ? offset : 0.0F;
}
