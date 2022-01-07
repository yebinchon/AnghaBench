
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gl_material {float* ShineTable; float SpecularIndex; float DiffuseIndex; float AmbientIndex; int Shininess; } ;
struct gl_light {double* Position; float* VP_inf_norm; float ConstantAttenuation; float LinearAttenuation; float QuadraticAttenuation; float SpotCutoff; float CosCutoff; double** SpotExpTable; float dli; float sli; int NormDirection; struct gl_light* NextEnabled; } ;
struct TYPE_5__ {scalar_t__ LocalViewer; } ;
struct TYPE_6__ {TYPE_1__ Model; struct gl_light* FirstEnabled; struct gl_material* Material; } ;
struct TYPE_7__ {TYPE_2__ Light; } ;
typedef size_t GLuint ;
typedef size_t GLint ;
typedef float GLfloat ;
typedef TYPE_3__ GLcontext ;


 float DOT3 (float*,int ) ;
 int EXP_TABLE_SIZE ;
 float GL_SQRT (float) ;
 int SHINE_TABLE_SIZE ;
 float gl_pow (float,int ) ;
 float pow (float,int ) ;

void gl_index_shade_vertices( GLcontext *ctx,
                              GLuint side,
                              GLuint n,
                              GLfloat vertex[][4],
                              GLfloat normal[][3],
                              GLuint indexResult[] )
{
   struct gl_material *mat = &ctx->Light.Material[side];
   GLint j;


   for (j=0;j<n;j++) {
      GLfloat index;
      GLfloat diffuse, specular;
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

      diffuse = specular = 0.0F;


      for (light=ctx->Light.FirstEnabled; light; light=light->NextEnabled) {
         GLfloat attenuation;
         GLfloat lx, ly, lz;
         GLfloat l_dot_norm;


         if (light->Position[3]==0.0) {


            lx = light->VP_inf_norm[0];
            ly = light->VP_inf_norm[1];
            lz = light->VP_inf_norm[2];
            attenuation = 1.0F;
         }
         else {

            GLfloat d;
            lx = light->Position[0] - vertex[j][0];
            ly = light->Position[1] - vertex[j][1];
            lz = light->Position[2] - vertex[j][2];
            d = (GLfloat) GL_SQRT( lx*lx + ly*ly + lz*lz );
            if (d>0.001F) {
               GLfloat invd = 1.0F / d;
               lx *= invd;
               ly *= invd;
               lz *= invd;
            }
            attenuation = 1.0F / (light->ConstantAttenuation
                        + d * (light->LinearAttenuation
                        + d * light->QuadraticAttenuation));
         }

         l_dot_norm = lx*nx + ly*ny + lz*nz;

         if (l_dot_norm>0.0F) {
            GLfloat spot_times_atten;


            if (light->SpotCutoff==180.0F) {

               spot_times_atten = attenuation;
            }
            else {
               GLfloat v[3], dot;
               v[0] = -lx;
               v[1] = -ly;
               v[2] = -lz;
               dot = DOT3( v, light->NormDirection );
               if (dot<=0.0F || dot<light->CosCutoff) {

                  spot_times_atten = 0.0F;
               }
               else {
                  double x = dot * (EXP_TABLE_SIZE-1);
                  int k = (int) x;
                  GLfloat spot = light->SpotExpTable[k][0]
                               + (x-k)*light->SpotExpTable[k][1];
                  spot_times_atten = spot * attenuation;
               }
            }


            diffuse += l_dot_norm * light->dli * spot_times_atten;


            {
               GLfloat h_x, h_y, h_z, n_dot_h, spec_coef;


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
                  h_x = lx - vx;
                  h_y = ly - vy;
                  h_z = lz - vz;
               }
               else {
                  h_x = lx;
                  h_y = ly;
                  h_z = lz + 1.0F;
               }

               n_dot_h = h_x*nx + h_y*ny + h_z*nz;

               if (n_dot_h <= 0.0F) {
                  spec_coef = 0.0F;
               }
               else {

                  n_dot_h = n_dot_h / GL_SQRT(h_x*h_x + h_y*h_y + h_z*h_z);
                  if (n_dot_h>1.0F) {
                     spec_coef = pow( n_dot_h, mat->Shininess );
                  }
                  else {
                     int k = (int) (n_dot_h * (GLfloat)(SHINE_TABLE_SIZE-1));
                     if (mat->ShineTable[k] < 0.0F)
                        mat->ShineTable[k] = gl_pow( n_dot_h, mat->Shininess );
                     spec_coef = mat->ShineTable[k];
                  }
               }
               specular += spec_coef * light->sli * spot_times_atten;
            }
         }

      }


      if (specular>1.0F) {
         index = mat->SpecularIndex;
      }
      else {
         GLfloat d_a, s_a;
         d_a = mat->DiffuseIndex - mat->AmbientIndex;
         s_a = mat->SpecularIndex - mat->AmbientIndex;

         index = mat->AmbientIndex
               + diffuse * (1.0F-specular) * d_a
               + specular * s_a;
         if (index>mat->SpecularIndex) {
            index = mat->SpecularIndex;
         }
      }
      indexResult[j] = (GLuint) (GLint) index;

   }
}
