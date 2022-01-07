
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gl_material {float* Emission; int* Ambient; float* Diffuse; float* ShineTable; float* Specular; int Shininess; } ;
struct gl_light {double* Position; float* VP_inf_norm; float ConstantAttenuation; float LinearAttenuation; float QuadraticAttenuation; float SpotCutoff; float* NormDirection; float CosCutoff; double** SpotExpTable; float* Ambient; float* Diffuse; float* Specular; struct gl_light* NextEnabled; } ;
struct TYPE_7__ {int* Ambient; scalar_t__ LocalViewer; } ;
struct TYPE_8__ {TYPE_2__ Model; struct gl_light* FirstEnabled; struct gl_material* Material; } ;
struct TYPE_9__ {TYPE_3__ Light; TYPE_1__* Visual; } ;
struct TYPE_6__ {float RedScale; float GreenScale; float BlueScale; float AlphaScale; } ;
typedef size_t GLuint ;
typedef size_t GLubyte ;
typedef size_t GLint ;
typedef float GLfloat ;
typedef TYPE_4__ GLcontext ;


 float CLAMP (float,float,float) ;
 int EXP_TABLE_SIZE ;
 size_t FloatToInt (float) ;
 float GL_SQRT (float) ;
 int SHINE_TABLE_SIZE ;
 float gl_pow (float,int ) ;
 float pow (float,int ) ;

void gl_color_shade_vertices( GLcontext *ctx,
                              GLuint side,
                              GLuint n,
                                        GLfloat vertex[][4],
                                        GLfloat normal[][3],
                              GLubyte color[][4] )
{
   GLint j;
   GLfloat rscale, gscale, bscale, ascale;
   GLfloat baseR, baseG, baseB, baseA;
   GLint sumA;
   struct gl_light *light;
   struct gl_material *mat;




   rscale = ctx->Visual->RedScale;
   gscale = ctx->Visual->GreenScale;
   bscale = ctx->Visual->BlueScale;
   ascale = ctx->Visual->AlphaScale;

   mat = &ctx->Light.Material[side];


   baseR = mat->Emission[0] + ctx->Light.Model.Ambient[0] * mat->Ambient[0];
   baseG = mat->Emission[1] + ctx->Light.Model.Ambient[1] * mat->Ambient[1];
   baseB = mat->Emission[2] + ctx->Light.Model.Ambient[2] * mat->Ambient[2];
   baseA = mat->Diffuse[3];

   sumA = (GLint) (CLAMP( baseA, 0.0F, 1.0F ) * ascale);

   for (j=0;j<n;j++) {
      GLfloat sumR, sumG, sumB;
      GLfloat nx, ny, nz;

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

      sumR = baseR;
      sumG = baseG;
      sumB = baseB;


      for (light=ctx->Light.FirstEnabled; light; light=light->NextEnabled) {
         GLfloat ambientR, ambientG, ambientB;
         GLfloat attenuation, spot;
         GLfloat VPx, VPy, VPz;
         GLfloat n_dot_VP;


         if (light->Position[3]==0.0) {

            VPx = light->VP_inf_norm[0];
            VPy = light->VP_inf_norm[1];
            VPz = light->VP_inf_norm[2];
            attenuation = 1.0F;
         }
         else {

            GLfloat d;
            VPx = light->Position[0] - vertex[j][0];
            VPy = light->Position[1] - vertex[j][1];
            VPz = light->Position[2] - vertex[j][2];
            d = (GLfloat) GL_SQRT( VPx*VPx + VPy*VPy + VPz*VPz );
            if (d>0.001F) {
               GLfloat invd = 1.0F / d;
               VPx *= invd;
               VPy *= invd;
               VPz *= invd;
            }
            attenuation = 1.0F / (light->ConstantAttenuation
                        + d * (light->LinearAttenuation
                        + d * light->QuadraticAttenuation));
         }


         if (light->SpotCutoff==180.0F) {

            spot = 1.0F;
         }
         else {
            GLfloat PVx, PVy, PVz, PV_dot_dir;
            PVx = -VPx;
            PVy = -VPy;
            PVz = -VPz;
            PV_dot_dir = PVx*light->NormDirection[0]
                       + PVy*light->NormDirection[1]
                       + PVz*light->NormDirection[2];
            if (PV_dot_dir<=0.0F || PV_dot_dir<light->CosCutoff) {

               spot = 0.0F;
            }
            else {
               double x = PV_dot_dir * (EXP_TABLE_SIZE-1);
               int k = (int) x;
               spot = light->SpotExpTable[k][0]
                    + (x-k)*light->SpotExpTable[k][1];
            }
         }

         ambientR = mat->Ambient[0] * light->Ambient[0];
         ambientG = mat->Ambient[1] * light->Ambient[1];
         ambientB = mat->Ambient[2] * light->Ambient[2];


         n_dot_VP = nx * VPx + ny * VPy + nz * VPz;


         if (n_dot_VP<=0.0F) {

            GLfloat t = attenuation * spot;
            sumR += t * ambientR;
            sumG += t * ambientG;
            sumB += t * ambientB;

         }
         else {
            GLfloat diffuseR, diffuseG, diffuseB;
            GLfloat specularR, specularG, specularB;
            GLfloat h_x, h_y, h_z, n_dot_h, t;


            diffuseR = n_dot_VP * mat->Diffuse[0] * light->Diffuse[0];
            diffuseG = n_dot_VP * mat->Diffuse[1] * light->Diffuse[1];
            diffuseB = n_dot_VP * mat->Diffuse[2] * light->Diffuse[2];


            if (ctx->Light.Model.LocalViewer) {
               GLfloat vx, vy, vz, vlen;
               vx = vertex[j][0];
               vy = vertex[j][1];
               vz = vertex[j][2];
               vlen = GL_SQRT( vx*vx + vy*vy + vz*vz );
               if (vlen>0.0001F) {
                  GLfloat invlen = 1.0F / vlen;
                  vx *= invlen;
                  vy *= invlen;
                  vz *= invlen;
               }

               h_x = VPx - vx;
               h_y = VPy - vy;
               h_z = VPz - vz;
            }
            else {

               h_x = VPx;
               h_y = VPy;
               h_z = VPz + 1.0F;
            }


            n_dot_h = nx*h_x + ny*h_y + nz*h_z;

            if (n_dot_h<=0.0F) {
               specularR = 0.0F;
               specularG = 0.0F;
               specularB = 0.0F;
            }
            else {
               GLfloat spec_coef;

               n_dot_h = n_dot_h / GL_SQRT( h_x*h_x + h_y*h_y + h_z*h_z );
               if (n_dot_h>1.0F) {

                  spec_coef = pow( n_dot_h, mat->Shininess );
               }
               else {

                  int k = (int) (n_dot_h * (GLfloat) (SHINE_TABLE_SIZE-1));
                  if (mat->ShineTable[k] < 0.0F)
                     mat->ShineTable[k] = gl_pow( n_dot_h, mat->Shininess );
                  spec_coef = mat->ShineTable[k];
               }
               if (spec_coef<1.0e-10) {
                  specularR = 0.0F;
                  specularG = 0.0F;
                  specularB = 0.0F;
               }
               else {
                  specularR = spec_coef * mat->Specular[0]*light->Specular[0];
                  specularG = spec_coef * mat->Specular[1]*light->Specular[1];
                  specularB = spec_coef * mat->Specular[2]*light->Specular[2];
               }
            }

            t = attenuation * spot;
            sumR += t * (ambientR + diffuseR + specularR);
            sumG += t * (ambientG + diffuseG + specularG);
            sumB += t * (ambientB + diffuseB + specularB);
         }

      }


      color[j][0] = FloatToInt(CLAMP( sumR, 0.0F, 1.0F ) * rscale);
      color[j][1] = FloatToInt(CLAMP( sumG, 0.0F, 1.0F ) * gscale);
      color[j][2] = FloatToInt(CLAMP( sumB, 0.0F, 1.0F ) * bscale);
      color[j][3] = sumA;

   }
}
