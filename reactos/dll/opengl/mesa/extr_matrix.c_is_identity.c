
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;

__attribute__((used)) static GLboolean is_identity( const GLfloat m[16] )
{
   if ( m[0]==1.0F && m[4]==0.0F && m[ 8]==0.0F && m[12]==0.0F
       && m[1]==0.0F && m[5]==1.0F && m[ 9]==0.0F && m[13]==0.0F
       && m[2]==0.0F && m[6]==0.0F && m[10]==1.0F && m[14]==0.0F
       && m[3]==0.0F && m[7]==0.0F && m[11]==0.0F && m[15]==1.0F) {
      return GL_TRUE;
   }
   else {
      return GL_FALSE;
   }
}
