
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vertex_buffer {size_t Count; int* MaterialMask; int MonoMaterial; struct gl_material** Material; } ;
struct gl_material {scalar_t__ Shininess; scalar_t__ AmbientIndex; scalar_t__ DiffuseIndex; scalar_t__ SpecularIndex; int Emission; int Specular; int Diffuse; int Ambient; } ;
struct TYPE_5__ {struct gl_material* Material; } ;
struct TYPE_6__ {int NewState; TYPE_1__ Light; struct vertex_buffer* VB; } ;
typedef int GLuint ;
typedef scalar_t__ GLfloat ;
typedef TYPE_2__ GLcontext ;


 int BACK_AMBIENT_BIT ;
 int BACK_DIFFUSE_BIT ;
 int BACK_EMISSION_BIT ;
 int BACK_INDEXES_BIT ;
 int BACK_SHININESS_BIT ;
 int BACK_SPECULAR_BIT ;
 scalar_t__ CLAMP (scalar_t__ const,float,float) ;
 int COPY_4V (int ,scalar_t__ const*) ;
 int FRONT_AMBIENT_BIT ;
 int FRONT_DIFFUSE_BIT ;
 int FRONT_EMISSION_BIT ;
 int FRONT_INDEXES_BIT ;
 int FRONT_SHININESS_BIT ;
 int FRONT_SPECULAR_BIT ;
 int GL_FALSE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_LIGHTING ;
 int gl_compute_material_shine_table (struct gl_material*) ;

void gl_set_material( GLcontext *ctx, GLuint bitmask, const GLfloat *params )
{
   struct gl_material *mat;

   if (INSIDE_BEGIN_END(ctx)) {
      struct vertex_buffer *VB = ctx->VB;




      mat = VB->Material[VB->Count];
      VB->MaterialMask[VB->Count] |= bitmask;
      VB->MonoMaterial = GL_FALSE;
   }
   else {

      mat = ctx->Light.Material;
      ctx->NewState |= NEW_LIGHTING;
   }

   if (bitmask & FRONT_AMBIENT_BIT) {
      COPY_4V( mat[0].Ambient, params );
   }
   if (bitmask & BACK_AMBIENT_BIT) {
      COPY_4V( mat[1].Ambient, params );
   }
   if (bitmask & FRONT_DIFFUSE_BIT) {
      COPY_4V( mat[0].Diffuse, params );
   }
   if (bitmask & BACK_DIFFUSE_BIT) {
      COPY_4V( mat[1].Diffuse, params );
   }
   if (bitmask & FRONT_SPECULAR_BIT) {
      COPY_4V( mat[0].Specular, params );
   }
   if (bitmask & BACK_SPECULAR_BIT) {
      COPY_4V( mat[1].Specular, params );
   }
   if (bitmask & FRONT_EMISSION_BIT) {
      COPY_4V( mat[0].Emission, params );
   }
   if (bitmask & BACK_EMISSION_BIT) {
      COPY_4V( mat[1].Emission, params );
   }
   if (bitmask & FRONT_SHININESS_BIT) {
      GLfloat shininess = CLAMP( params[0], 0.0F, 128.0F );
      if (mat[0].Shininess != shininess) {
         mat[0].Shininess = shininess;
         gl_compute_material_shine_table( &mat[0] );
      }
   }
   if (bitmask & BACK_SHININESS_BIT) {
      GLfloat shininess = CLAMP( params[0], 0.0F, 128.0F );
      if (mat[1].Shininess != shininess) {
         mat[1].Shininess = shininess;
         gl_compute_material_shine_table( &mat[1] );
      }
   }
   if (bitmask & FRONT_INDEXES_BIT) {
      mat[0].AmbientIndex = params[0];
      mat[0].DiffuseIndex = params[1];
      mat[0].SpecularIndex = params[2];
   }
   if (bitmask & BACK_INDEXES_BIT) {
      mat[1].AmbientIndex = params[0];
      mat[1].DiffuseIndex = params[1];
      mat[1].SpecularIndex = params[2];
   }
}
