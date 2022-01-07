
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gl_material {float* ShineTable; int Shininess; } ;
struct gl_light {float* VP_inf_norm; float** MatDiffuse; float* h_inf_norm; float** MatSpecular; struct gl_light* NextEnabled; } ;
struct TYPE_6__ {float** BaseColor; struct gl_material* Material; struct gl_light* FirstEnabled; } ;
struct TYPE_7__ {TYPE_2__ Light; TYPE_1__* Visual; } ;
struct TYPE_5__ {float RedScale; float GreenScale; float BlueScale; float AlphaScale; } ;
typedef size_t GLuint ;
typedef float GLubyte ;
typedef size_t GLint ;
typedef float GLfloat ;
typedef TYPE_3__ GLcontext ;


 float A ;
 float FloatToInt (float) ;
 float MIN2 (float,float) ;
 int SHINE_TABLE_SIZE ;
 float gl_pow (float,int ) ;
 float pow (float,int ) ;

void gl_color_shade_vertices_fast( GLcontext *ctx,
                                   GLuint side,
                                   GLuint n,
                                             GLfloat normal[][3],
                                   GLubyte color[][4] )
{
   GLint j;
   GLfloat rscale, gscale, bscale, ascale;
   GLint sumA;
   GLfloat *baseColor = ctx->Light.BaseColor[side];




   rscale = ctx->Visual->RedScale;
   gscale = ctx->Visual->GreenScale;
   bscale = ctx->Visual->BlueScale;
   ascale = ctx->Visual->AlphaScale;


   sumA = (GLint) (baseColor[3] * ascale);


   for (j=0;j<n;j++) {
      GLfloat sumR, sumG, sumB;
      GLfloat nx, ny, nz;
      struct gl_light *light;


      if (side==0) {
         nx = normal[j][0];
         ny = normal[j][1];
         nz = normal[j][2];
      }
      else {
         nx = -normal[j][0];
         ny = -normal[j][1];
         nz = -normal[j][2];
      }
      sumR = baseColor[0];
      sumG = baseColor[1];
      sumB = baseColor[2];


      for (light=ctx->Light.FirstEnabled; light; light=light->NextEnabled) {
         GLfloat n_dot_VP;

         n_dot_VP = nx * light->VP_inf_norm[0]
                  + ny * light->VP_inf_norm[1]
                  + nz * light->VP_inf_norm[2];


         if (n_dot_VP>0.0F) {
            GLfloat n_dot_h;
            GLfloat *lightMatDiffuse = light->MatDiffuse[side];


            sumR += n_dot_VP * lightMatDiffuse[0];
            sumG += n_dot_VP * lightMatDiffuse[1];
            sumB += n_dot_VP * lightMatDiffuse[2];



            n_dot_h = nx * light->h_inf_norm[0]
                    + ny * light->h_inf_norm[1]
                    + nz * light->h_inf_norm[2];
            if (n_dot_h>0.0F) {
               if (n_dot_h>1.0F) {

                  GLfloat spec_coef = pow( n_dot_h,
                                        ctx->Light.Material[side].Shininess );
                  if (spec_coef>1.0e-10F) {
                     sumR += spec_coef * light->MatSpecular[side][0];
                     sumG += spec_coef * light->MatSpecular[side][1];
                     sumB += spec_coef * light->MatSpecular[side][2];
                  }
               }
               else {

                  int k = (int) (n_dot_h * (GLfloat) (SHINE_TABLE_SIZE-1));
                  struct gl_material *m = &ctx->Light.Material[side];
                  GLfloat spec_coef;
                  if (m->ShineTable[k] < 0.0F)
                     m->ShineTable[k] = gl_pow( n_dot_h, m->Shininess );
                  spec_coef = m->ShineTable[k];
                  sumR += spec_coef * light->MatSpecular[side][0];
                  sumG += spec_coef * light->MatSpecular[side][1];
                  sumB += spec_coef * light->MatSpecular[side][2];
               }
            }
         }

      }


      color[j][0] = FloatToInt(MIN2( sumR, 1.0F ) * rscale);
      color[j][1] = FloatToInt(MIN2( sumG, 1.0F ) * gscale);
      color[j][2] = FloatToInt(MIN2( sumB, 1.0F ) * bscale);
      color[j][3] = sumA;

   }
}
