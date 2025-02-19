
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vertex_buffer {int* MaterialMask; TYPE_2__** Material; } ;
struct TYPE_9__ {int SpecularIndex; int DiffuseIndex; int AmbientIndex; int Shininess; int Emission; int Specular; int Diffuse; int Ambient; } ;
struct TYPE_6__ {TYPE_5__* Material; } ;
struct TYPE_8__ {TYPE_1__ Light; struct vertex_buffer* VB; } ;
struct TYPE_7__ {int SpecularIndex; int DiffuseIndex; int AmbientIndex; int Shininess; int Emission; int Specular; int Diffuse; int Ambient; } ;
typedef size_t GLuint ;
typedef TYPE_3__ GLcontext ;


 int BACK_AMBIENT_BIT ;
 int BACK_DIFFUSE_BIT ;
 int BACK_EMISSION_BIT ;
 int BACK_INDEXES_BIT ;
 int BACK_SHININESS_BIT ;
 int BACK_SPECULAR_BIT ;
 int COPY_4V (int ,int ) ;
 int FRONT_AMBIENT_BIT ;
 int FRONT_DIFFUSE_BIT ;
 int FRONT_EMISSION_BIT ;
 int FRONT_INDEXES_BIT ;
 int FRONT_SHININESS_BIT ;
 int FRONT_SPECULAR_BIT ;
 int gl_compute_material_shine_table (TYPE_5__*) ;

__attribute__((used)) static void update_material( GLcontext *ctx, GLuint i )
{
   struct vertex_buffer *VB = ctx->VB;

   if (VB->MaterialMask[i]) {
      if (VB->MaterialMask[i] & FRONT_AMBIENT_BIT) {
         COPY_4V( ctx->Light.Material[0].Ambient, VB->Material[i][0].Ambient );
      }
      if (VB->MaterialMask[i] & BACK_AMBIENT_BIT) {
         COPY_4V( ctx->Light.Material[1].Ambient, VB->Material[i][1].Ambient );
      }
      if (VB->MaterialMask[i] & FRONT_DIFFUSE_BIT) {
         COPY_4V( ctx->Light.Material[0].Diffuse, VB->Material[i][0].Diffuse );
      }
      if (VB->MaterialMask[i] & BACK_DIFFUSE_BIT) {
         COPY_4V( ctx->Light.Material[1].Diffuse, VB->Material[i][1].Diffuse );
      }
      if (VB->MaterialMask[i] & FRONT_SPECULAR_BIT) {
         COPY_4V( ctx->Light.Material[0].Specular, VB->Material[i][0].Specular );
      }
      if (VB->MaterialMask[i] & BACK_SPECULAR_BIT) {
         COPY_4V( ctx->Light.Material[1].Specular, VB->Material[i][1].Specular );
      }
      if (VB->MaterialMask[i] & FRONT_EMISSION_BIT) {
         COPY_4V( ctx->Light.Material[0].Emission, VB->Material[i][0].Emission );
      }
      if (VB->MaterialMask[i] & BACK_EMISSION_BIT) {
         COPY_4V( ctx->Light.Material[1].Emission, VB->Material[i][1].Emission );
      }
      if (VB->MaterialMask[i] & FRONT_SHININESS_BIT) {
         ctx->Light.Material[0].Shininess = VB->Material[i][0].Shininess;
         gl_compute_material_shine_table( &ctx->Light.Material[0] );
      }
      if (VB->MaterialMask[i] & BACK_SHININESS_BIT) {
         ctx->Light.Material[1].Shininess = VB->Material[i][1].Shininess;
         gl_compute_material_shine_table( &ctx->Light.Material[1] );
      }
      if (VB->MaterialMask[i] & FRONT_INDEXES_BIT) {
         ctx->Light.Material[0].AmbientIndex = VB->Material[i][0].AmbientIndex;
         ctx->Light.Material[0].DiffuseIndex = VB->Material[i][0].DiffuseIndex;
         ctx->Light.Material[0].SpecularIndex = VB->Material[i][0].SpecularIndex;
      }
      if (VB->MaterialMask[i] & BACK_INDEXES_BIT) {
         ctx->Light.Material[1].AmbientIndex = VB->Material[i][1].AmbientIndex;
         ctx->Light.Material[1].DiffuseIndex = VB->Material[i][1].DiffuseIndex;
         ctx->Light.Material[1].SpecularIndex = VB->Material[i][1].SpecularIndex;
      }
      VB->MaterialMask[i] = 0;
   }
}
