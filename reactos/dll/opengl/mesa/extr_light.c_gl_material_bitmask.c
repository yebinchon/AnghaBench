
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLenum ;


 int ASSERT (int) ;
 int BACK_AMBIENT_BIT ;
 int BACK_DIFFUSE_BIT ;
 int BACK_EMISSION_BIT ;
 int BACK_INDEXES_BIT ;
 int BACK_MATERIAL_BITS ;
 int BACK_SHININESS_BIT ;
 int BACK_SPECULAR_BIT ;
 int FRONT_AMBIENT_BIT ;
 int FRONT_DIFFUSE_BIT ;
 int FRONT_EMISSION_BIT ;
 int FRONT_INDEXES_BIT ;
 int FRONT_MATERIAL_BITS ;
 int FRONT_SHININESS_BIT ;
 int FRONT_SPECULAR_BIT ;


 int GL_BACK ;



 int GL_FRONT ;
 int GL_FRONT_AND_BACK ;


 int gl_problem (int *,char*) ;

GLuint gl_material_bitmask( GLenum face, GLenum pname )
{
   GLuint bitmask = 0;


   switch (pname) {
      case 130:
         bitmask |= FRONT_EMISSION_BIT | BACK_EMISSION_BIT;
         break;
      case 134:
         bitmask |= FRONT_AMBIENT_BIT | BACK_AMBIENT_BIT;
         break;
      case 131:
         bitmask |= FRONT_DIFFUSE_BIT | BACK_DIFFUSE_BIT;
         break;
      case 128:
         bitmask |= FRONT_SPECULAR_BIT | BACK_SPECULAR_BIT;
         break;
      case 129:
         bitmask |= FRONT_SHININESS_BIT | BACK_SHININESS_BIT;
         break;
      case 133:
         bitmask |= FRONT_AMBIENT_BIT | BACK_AMBIENT_BIT;
         bitmask |= FRONT_DIFFUSE_BIT | BACK_DIFFUSE_BIT;
         break;
      case 132:
         bitmask |= FRONT_INDEXES_BIT | BACK_INDEXES_BIT;
         break;
      default:
         gl_problem(((void*)0), "Bad param in gl_material_bitmask");
         return 0;
   }

   ASSERT( face==GL_FRONT || face==GL_BACK || face==GL_FRONT_AND_BACK );

   if (face==GL_FRONT) {
      bitmask &= FRONT_MATERIAL_BITS;
   }
   else if (face==GL_BACK) {
      bitmask &= BACK_MATERIAL_BITS;
   }

   return bitmask;
}
